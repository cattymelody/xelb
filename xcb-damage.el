;;; -*- lexical-binding: t -*-
;; This file was generated from `damage.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:damage:-extension-xname "DAMAGE")
(defconst xcb:damage:-extension-name "Damage")
(defconst xcb:damage:-major-version 1)
(defconst xcb:damage:-minor-version 1)

(require 'xcb-xproto)

(require 'xcb-xfixes)

(xcb:deftypealias 'xcb:damage:DAMAGE 'xcb:-u4)

(defconst xcb:damage:ReportLevel:RawRectangles 0)
(defconst xcb:damage:ReportLevel:DeltaRectangles 1)
(defconst xcb:damage:ReportLevel:BoundingBox 2)
(defconst xcb:damage:ReportLevel:NonEmpty 3)

(defclass xcb:damage:BadDamage
  (xcb:-error)
  nil)

(defclass xcb:damage:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (client-major-version :initarg :client-major-version :type xcb:CARD32)
   (client-minor-version :initarg :client-minor-version :type xcb:CARD32)))
(defclass xcb:damage:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)))

(defclass xcb:damage:Create
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (damage :initarg :damage :type xcb:damage:DAMAGE)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (level :initarg :level :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:damage:Destroy
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (damage :initarg :damage :type xcb:damage:DAMAGE)))

(defclass xcb:damage:Subtract
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (damage :initarg :damage :type xcb:damage:DAMAGE)
   (repair :initarg :repair :type xcb:damage:REGION)
   (parts :initarg :parts :type xcb:damage:REGION)))

(defclass xcb:damage:Add
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (region :initarg :region :type xcb:damage:REGION)))

(defclass xcb:damage:Notify
  (xcb:-event)
  ((level :initarg :level :type xcb:CARD8)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (damage :initarg :damage :type xcb:damage:DAMAGE)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (area :initarg :area :type xcb:RECTANGLE)
   (geometry :initarg :geometry :type xcb:RECTANGLE)))

(defconst xcb:damage:error-number-class-alist
  '((0 . xcb:damage:BadDamage))
  "(error-number . error-class) alist")

(defconst xcb:damage:event-number-class-alist
  '((0 . xcb:damage:Notify))
  "(event-number . event-class) alist")



(provide 'xcb-damage)
