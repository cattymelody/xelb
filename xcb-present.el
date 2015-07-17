;;; -*- lexical-binding: t -*-
;; This file was generated from `present.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:present:-extension-xname "Present")
(defconst xcb:present:-extension-name "Present")
(defconst xcb:present:-major-version 1)
(defconst xcb:present:-minor-version 0)

(require 'xcb-xproto)

(require 'xcb-randr)

(require 'xcb-xfixes)

(require 'xcb-sync)

(defconst xcb:present:Event:ConfigureNotify 0)
(defconst xcb:present:Event:CompleteNotify 1)
(defconst xcb:present:Event:IdleNotify 2)
(defconst xcb:present:Event:RedirectNotify 3)

(defconst xcb:present:EventMask:NoEvent 0)
(defconst xcb:present:EventMask:ConfigureNotify 1)
(defconst xcb:present:EventMask:CompleteNotify 2)
(defconst xcb:present:EventMask:IdleNotify 4)
(defconst xcb:present:EventMask:RedirectNotify 8)

(defconst xcb:present:Option:None 0)
(defconst xcb:present:Option:Async 1)
(defconst xcb:present:Option:Copy 2)
(defconst xcb:present:Option:UST 4)

(defconst xcb:present:Capability:None 0)
(defconst xcb:present:Capability:Async 1)
(defconst xcb:present:Capability:Fence 2)
(defconst xcb:present:Capability:UST 4)

(defconst xcb:present:CompleteKind:Pixmap 0)
(defconst xcb:present:CompleteKind:NotifyMSC 1)

(defconst xcb:present:CompleteMode:Copy 0)
(defconst xcb:present:CompleteMode:Flip 1)
(defconst xcb:present:CompleteMode:Skip 2)

(defclass xcb:present:Notify
  (xcb:-struct)
  ((window :initarg :window :type xcb:WINDOW)
   (serial :initarg :serial :type xcb:CARD32)))

(defclass xcb:present:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)))
(defclass xcb:present:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)))

(defclass xcb:present:Pixmap
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (pixmap :initarg :pixmap :type xcb:PIXMAP)
   (serial :initarg :serial :type xcb:CARD32)
   (valid :initarg :valid :type xcb:present:REGION)
   (update :initarg :update :type xcb:present:REGION)
   (x-off :initarg :x-off :type xcb:INT16)
   (y-off :initarg :y-off :type xcb:INT16)
   (target-crtc :initarg :target-crtc :type xcb:present:CRTC)
   (wait-fence :initarg :wait-fence :type xcb:present:FENCE)
   (idle-fence :initarg :idle-fence :type xcb:present:FENCE)
   (options :initarg :options :type xcb:CARD32)
   (pad~0 :initform 4 :type xcb:-pad)
   (target-msc :initarg :target-msc :type xcb:present:CARD64)
   (divisor :initarg :divisor :type xcb:present:CARD64)
   (remainder :initarg :remainder :type xcb:present:CARD64)
   (notifies :initarg :notifies :type xcb:-ignore)
   (notifies~ :initform
	      '(name notifies type xcb:present:Notify size nil)
	      :type xcb:-list)))

(defclass xcb:present:NotifyMSC
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (serial :initarg :serial :type xcb:CARD32)
   (pad~0 :initform 4 :type xcb:-pad)
   (target-msc :initarg :target-msc :type xcb:present:CARD64)
   (divisor :initarg :divisor :type xcb:present:CARD64)
   (remainder :initarg :remainder :type xcb:present:CARD64)))

(xcb:deftypealias 'xcb:present:EVENT 'xcb:-u4)

(defclass xcb:present:SelectInput
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (eid :initarg :eid :type xcb:present:EVENT)
   (window :initarg :window :type xcb:WINDOW)
   (event-mask :initarg :event-mask :type xcb:CARD32)))

(defclass xcb:present:QueryCapabilities
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (target :initarg :target :type xcb:CARD32)))
(defclass xcb:present:QueryCapabilities~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (capabilities :initarg :capabilities :type xcb:CARD32)))

(defclass xcb:present:Generic
  (xcb:-event)
  ((extension :initarg :extension :type xcb:CARD8)
   (length :initarg :length :type xcb:CARD32)
   (evtype :initarg :evtype :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (event :initarg :event :type xcb:present:EVENT)))

(defclass xcb:present:ConfigureNotify
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (event :initarg :event :type xcb:present:EVENT)
   (window :initarg :window :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (off-x :initarg :off-x :type xcb:INT16)
   (off-y :initarg :off-y :type xcb:INT16)
   (pixmap-width :initarg :pixmap-width :type xcb:CARD16)
   (pixmap-height :initarg :pixmap-height :type xcb:CARD16)
   (pixmap-flags :initarg :pixmap-flags :type xcb:CARD32)))

(defclass xcb:present:CompleteNotify
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (kind :initarg :kind :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (event :initarg :event :type xcb:present:EVENT)
   (window :initarg :window :type xcb:WINDOW)
   (serial :initarg :serial :type xcb:CARD32)
   (ust :initarg :ust :type xcb:present:CARD64)
   (msc :initarg :msc :type xcb:present:CARD64)))

(defclass xcb:present:IdleNotify
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (event :initarg :event :type xcb:present:EVENT)
   (window :initarg :window :type xcb:WINDOW)
   (serial :initarg :serial :type xcb:CARD32)
   (pixmap :initarg :pixmap :type xcb:PIXMAP)
   (idle-fence :initarg :idle-fence :type xcb:present:FENCE)))

(defclass xcb:present:RedirectNotify
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (update-window :initarg :update-window :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:present:EVENT)
   (event-window :initarg :event-window :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (pixmap :initarg :pixmap :type xcb:PIXMAP)
   (serial :initarg :serial :type xcb:CARD32)
   (valid-region :initarg :valid-region :type xcb:present:REGION)
   (update-region :initarg :update-region :type xcb:present:REGION)
   (valid-rect :initarg :valid-rect :type xcb:RECTANGLE)
   (update-rect :initarg :update-rect :type xcb:RECTANGLE)
   (x-off :initarg :x-off :type xcb:INT16)
   (y-off :initarg :y-off :type xcb:INT16)
   (target-crtc :initarg :target-crtc :type xcb:present:CRTC)
   (wait-fence :initarg :wait-fence :type xcb:present:FENCE)
   (idle-fence :initarg :idle-fence :type xcb:present:FENCE)
   (options :initarg :options :type xcb:CARD32)
   (pad~1 :initform 4 :type xcb:-pad)
   (target-msc :initarg :target-msc :type xcb:present:CARD64)
   (divisor :initarg :divisor :type xcb:present:CARD64)
   (remainder :initarg :remainder :type xcb:present:CARD64)
   (notifies :initarg :notifies :type xcb:-ignore)
   (notifies~ :initform
	      '(name notifies type xcb:present:Notify size nil)
	      :type xcb:-list)))

(defconst xcb:present:event-number-class-alist
  '((0 . xcb:present:Generic)
    (0 . xcb:present:ConfigureNotify)
    (1 . xcb:present:CompleteNotify)
    (2 . xcb:present:IdleNotify)
    (3 . xcb:present:RedirectNotify))
  "(event-number . event-class) alist")



(provide 'xcb-present)
