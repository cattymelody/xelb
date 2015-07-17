;;; -*- lexical-binding: t -*-
;; This file was generated from `screensaver.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:screensaver:-extension-xname "MIT-SCREEN-SAVER")
(defconst xcb:screensaver:-extension-name "ScreenSaver")
(defconst xcb:screensaver:-major-version 1)
(defconst xcb:screensaver:-minor-version 1)

(require 'xcb-xproto)

(defconst xcb:screensaver:Kind:Blanked 0)
(defconst xcb:screensaver:Kind:Internal 1)
(defconst xcb:screensaver:Kind:External 2)

(defconst xcb:screensaver:Event:NotifyMask 1)
(defconst xcb:screensaver:Event:CycleMask 2)

(defconst xcb:screensaver:State:Off 0)
(defconst xcb:screensaver:State:On 1)
(defconst xcb:screensaver:State:Cycle 2)
(defconst xcb:screensaver:State:Disabled 3)

(defclass xcb:screensaver:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (client-major-version :initarg :client-major-version :type xcb:CARD8)
   (client-minor-version :initarg :client-minor-version :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:screensaver:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (server-major-version :initarg :server-major-version :type xcb:CARD16)
   (server-minor-version :initarg :server-minor-version :type xcb:CARD16)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:screensaver:QueryInfo
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))
(defclass xcb:screensaver:QueryInfo~reply
  (xcb:-reply)
  ((state :initarg :state :type xcb:CARD8)
   (saver-window :initarg :saver-window :type xcb:WINDOW)
   (ms-until-server :initarg :ms-until-server :type xcb:CARD32)
   (ms-since-user-input :initarg :ms-since-user-input :type xcb:CARD32)
   (event-mask :initarg :event-mask :type xcb:CARD32)
   (kind :initarg :kind :type xcb:BYTE)
   (pad~0 :initform 7 :type xcb:-pad)))

(defclass xcb:screensaver:SelectInput
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (event-mask :initarg :event-mask :type xcb:CARD32)))

(defclass xcb:screensaver:SetAttributes
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (border-width :initarg :border-width :type xcb:CARD16)
   (class :initarg :class :type xcb:BYTE)
   (depth :initarg :depth :type xcb:CARD8)
   (visual :initarg :visual :type xcb:VISUALID)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:CW:BackPixmap background-pixmap)
		  (xcb:CW:BackPixel background-pixel)
		  (xcb:CW:BorderPixmap border-pixmap)
		  (xcb:CW:BorderPixel border-pixel)
		  (xcb:CW:BitGravity bit-gravity)
		  (xcb:CW:WinGravity win-gravity)
		  (xcb:CW:BackingStore backing-store)
		  (xcb:CW:BackingPlanes backing-planes)
		  (xcb:CW:BackingPixel backing-pixel)
		  (xcb:CW:OverrideRedirect override-redirect)
		  (xcb:CW:SaveUnder save-under)
		  (xcb:CW:EventMask event-mask)
		  (xcb:CW:DontPropagate do-not-propogate-mask)
		  (xcb:CW:Colormap colormap)
		  (xcb:CW:Cursor cursor)))
	       :type xcb:-switch)
   (background-pixmap :initarg :background-pixmap :type xcb:PIXMAP)
   (background-pixel :initarg :background-pixel :type xcb:CARD32)
   (border-pixmap :initarg :border-pixmap :type xcb:PIXMAP)
   (border-pixel :initarg :border-pixel :type xcb:CARD32)
   (bit-gravity :initarg :bit-gravity :type xcb:CARD32)
   (win-gravity :initarg :win-gravity :type xcb:CARD32)
   (backing-store :initarg :backing-store :type xcb:CARD32)
   (backing-planes :initarg :backing-planes :type xcb:CARD32)
   (backing-pixel :initarg :backing-pixel :type xcb:CARD32)
   (override-redirect :initarg :override-redirect :type xcb:BOOL32)
   (save-under :initarg :save-under :type xcb:BOOL32)
   (event-mask :initarg :event-mask :type xcb:CARD32)
   (do-not-propogate-mask :initarg :do-not-propogate-mask :type xcb:CARD32)
   (colormap :initarg :colormap :type xcb:COLORMAP)
   (cursor :initarg :cursor :type xcb:CURSOR)))

(defclass xcb:screensaver:UnsetAttributes
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))

(defclass xcb:screensaver:Suspend
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (suspend :initarg :suspend :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:screensaver:Notify
  (xcb:-event)
  ((state :initarg :state :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (kind :initarg :kind :type xcb:BYTE)
   (forced :initarg :forced :type xcb:BOOL)
   (pad~0 :initform 14 :type xcb:-pad)))

(defconst xcb:screensaver:event-number-class-alist
  '((0 . xcb:screensaver:Notify))
  "(event-number . event-class) alist")



(provide 'xcb-screensaver)
