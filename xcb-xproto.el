;;; -*- lexical-binding: t -*-
;; This file was generated from `xproto.xml' by `el_client.el'.

(require 'xcb-types)

(defclass xcb:CHAR2B
  (xcb:-struct)
  ((byte1 :initarg :byte1 :type xcb:CARD8)
   (byte2 :initarg :byte2 :type xcb:CARD8)))

(xcb:deftypealias 'xcb:WINDOW 'xcb:-u4)

(xcb:deftypealias 'xcb:PIXMAP 'xcb:-u4)

(xcb:deftypealias 'xcb:CURSOR 'xcb:-u4)

(xcb:deftypealias 'xcb:FONT 'xcb:-u4)

(xcb:deftypealias 'xcb:GCONTEXT 'xcb:-u4)

(xcb:deftypealias 'xcb:COLORMAP 'xcb:-u4)

(xcb:deftypealias 'xcb:ATOM 'xcb:-u4)

(xcb:deftypealias 'xcb:DRAWABLE 'xcb:-u4)

(xcb:deftypealias 'xcb:FONTABLE 'xcb:-u4)

(xcb:deftypealias 'xcb:BOOL32 'xcb:CARD32)

(xcb:deftypealias 'xcb:VISUALID 'xcb:CARD32)

(xcb:deftypealias 'xcb:TIMESTAMP 'xcb:CARD32)

(xcb:deftypealias 'xcb:KEYSYM 'xcb:CARD32)

(xcb:deftypealias 'xcb:KEYCODE 'xcb:CARD8)

(xcb:deftypealias 'xcb:KEYCODE32 'xcb:CARD32)

(xcb:deftypealias 'xcb:BUTTON 'xcb:CARD8)

(defclass xcb:POINT
  (xcb:-struct)
  ((x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)))

(defclass xcb:RECTANGLE
  (xcb:-struct)
  ((x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:ARC
  (xcb:-struct)
  ((x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (angle1 :initarg :angle1 :type xcb:INT16)
   (angle2 :initarg :angle2 :type xcb:INT16)))

(defclass xcb:FORMAT
  (xcb:-struct)
  ((depth :initarg :depth :type xcb:CARD8)
   (bits-per-pixel :initarg :bits-per-pixel :type xcb:CARD8)
   (scanline-pad :initarg :scanline-pad :type xcb:CARD8)
   (pad~0 :initform 5 :type xcb:-pad)))

(defconst xcb:VisualClass:StaticGray 0)
(defconst xcb:VisualClass:GrayScale 1)
(defconst xcb:VisualClass:StaticColor 2)
(defconst xcb:VisualClass:PseudoColor 3)
(defconst xcb:VisualClass:TrueColor 4)
(defconst xcb:VisualClass:DirectColor 5)

(defclass xcb:VISUALTYPE
  (xcb:-struct)
  ((visual-id :initarg :visual-id :type xcb:VISUALID)
   (class :initarg :class :type xcb:CARD8)
   (bits-per-rgb-value :initarg :bits-per-rgb-value :type xcb:CARD8)
   (colormap-entries :initarg :colormap-entries :type xcb:CARD16)
   (red-mask :initarg :red-mask :type xcb:CARD32)
   (green-mask :initarg :green-mask :type xcb:CARD32)
   (blue-mask :initarg :blue-mask :type xcb:CARD32)
   (pad~0 :initform 4 :type xcb:-pad)))

(defclass xcb:DEPTH
  (xcb:-struct)
  ((depth :initarg :depth :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (visuals-len :initarg :visuals-len :type xcb:CARD16)
   (pad~1 :initform 4 :type xcb:-pad)
   (visuals :initarg :visuals :type xcb:-ignore)
   (visuals~ :initform
	     '(name visuals type xcb:VISUALTYPE size
		    (xcb:-fieldref 'visuals-len))
	     :type xcb:-list)))

(defconst xcb:EventMask:NoEvent 0)
(defconst xcb:EventMask:KeyPress 1)
(defconst xcb:EventMask:KeyRelease 2)
(defconst xcb:EventMask:ButtonPress 4)
(defconst xcb:EventMask:ButtonRelease 8)
(defconst xcb:EventMask:EnterWindow 16)
(defconst xcb:EventMask:LeaveWindow 32)
(defconst xcb:EventMask:PointerMotion 64)
(defconst xcb:EventMask:PointerMotionHint 128)
(defconst xcb:EventMask:Button1Motion 256)
(defconst xcb:EventMask:Button2Motion 512)
(defconst xcb:EventMask:Button3Motion 1024)
(defconst xcb:EventMask:Button4Motion 2048)
(defconst xcb:EventMask:Button5Motion 4096)
(defconst xcb:EventMask:ButtonMotion 8192)
(defconst xcb:EventMask:KeymapState 16384)
(defconst xcb:EventMask:Exposure 32768)
(defconst xcb:EventMask:VisibilityChange 65536)
(defconst xcb:EventMask:StructureNotify 131072)
(defconst xcb:EventMask:ResizeRedirect 262144)
(defconst xcb:EventMask:SubstructureNotify 524288)
(defconst xcb:EventMask:SubstructureRedirect 1048576)
(defconst xcb:EventMask:FocusChange 2097152)
(defconst xcb:EventMask:PropertyChange 4194304)
(defconst xcb:EventMask:ColorMapChange 8388608)
(defconst xcb:EventMask:OwnerGrabButton 16777216)

(defconst xcb:BackingStore:NotUseful 0)
(defconst xcb:BackingStore:WhenMapped 1)
(defconst xcb:BackingStore:Always 2)

(defclass xcb:SCREEN
  (xcb:-struct)
  ((root :initarg :root :type xcb:WINDOW)
   (default-colormap :initarg :default-colormap :type xcb:COLORMAP)
   (white-pixel :initarg :white-pixel :type xcb:CARD32)
   (black-pixel :initarg :black-pixel :type xcb:CARD32)
   (current-input-masks :initarg :current-input-masks :type xcb:CARD32)
   (width-in-pixels :initarg :width-in-pixels :type xcb:CARD16)
   (height-in-pixels :initarg :height-in-pixels :type xcb:CARD16)
   (width-in-millimeters :initarg :width-in-millimeters :type xcb:CARD16)
   (height-in-millimeters :initarg :height-in-millimeters :type xcb:CARD16)
   (min-installed-maps :initarg :min-installed-maps :type xcb:CARD16)
   (max-installed-maps :initarg :max-installed-maps :type xcb:CARD16)
   (root-visual :initarg :root-visual :type xcb:VISUALID)
   (backing-stores :initarg :backing-stores :type xcb:BYTE)
   (save-unders :initarg :save-unders :type xcb:BOOL)
   (root-depth :initarg :root-depth :type xcb:CARD8)
   (allowed-depths-len :initarg :allowed-depths-len :type xcb:CARD8)
   (allowed-depths :initarg :allowed-depths :type xcb:-ignore)
   (allowed-depths~ :initform
		    '(name allowed-depths type xcb:DEPTH size
			   (xcb:-fieldref 'allowed-depths-len))
		    :type xcb:-list)))

(defclass xcb:SetupRequest
  (xcb:-struct)
  ((byte-order :initarg :byte-order :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (protocol-major-version :initarg :protocol-major-version :type xcb:CARD16)
   (protocol-minor-version :initarg :protocol-minor-version :type xcb:CARD16)
   (authorization-protocol-name-len :initarg :authorization-protocol-name-len :type xcb:CARD16)
   (authorization-protocol-data-len :initarg :authorization-protocol-data-len :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (authorization-protocol-name :initarg :authorization-protocol-name :type xcb:-ignore)
   (authorization-protocol-name~ :initform
				 '(name authorization-protocol-name type xcb:char size
					(xcb:-fieldref 'authorization-protocol-name-len))
				 :type xcb:-list)
   (authorization-protocol-data :initarg :authorization-protocol-data :type xcb:-ignore)
   (authorization-protocol-data~ :initform
				 '(name authorization-protocol-data type xcb:char size
					(xcb:-fieldref 'authorization-protocol-data-len))
				 :type xcb:-list)))

(defclass xcb:SetupFailed
  (xcb:-struct)
  ((status :initarg :status :type xcb:CARD8)
   (reason-len :initarg :reason-len :type xcb:CARD8)
   (protocol-major-version :initarg :protocol-major-version :type xcb:CARD16)
   (protocol-minor-version :initarg :protocol-minor-version :type xcb:CARD16)
   (length :initarg :length :type xcb:CARD16)
   (reason :initarg :reason :type xcb:-ignore)
   (reason~ :initform
	    '(name reason type xcb:char size
		   (xcb:-fieldref 'reason-len))
	    :type xcb:-list)))

(defclass xcb:SetupAuthenticate
  (xcb:-struct)
  ((status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 5 :type xcb:-pad)
   (length :initarg :length :type xcb:CARD16)
   (reason :initarg :reason :type xcb:-ignore)
   (reason~ :initform
	    '(name reason type xcb:char size
		   (*
		    (xcb:-fieldref 'length)
		    4))
	    :type xcb:-list)))

(defconst xcb:ImageOrder:LSBFirst 0)
(defconst xcb:ImageOrder:MSBFirst 1)

(defclass xcb:Setup
  (xcb:-struct)
  ((status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (protocol-major-version :initarg :protocol-major-version :type xcb:CARD16)
   (protocol-minor-version :initarg :protocol-minor-version :type xcb:CARD16)
   (length :initarg :length :type xcb:CARD16)
   (release-number :initarg :release-number :type xcb:CARD32)
   (resource-id-base :initarg :resource-id-base :type xcb:CARD32)
   (resource-id-mask :initarg :resource-id-mask :type xcb:CARD32)
   (motion-buffer-size :initarg :motion-buffer-size :type xcb:CARD32)
   (vendor-len :initarg :vendor-len :type xcb:CARD16)
   (maximum-request-length :initarg :maximum-request-length :type xcb:CARD16)
   (roots-len :initarg :roots-len :type xcb:CARD8)
   (pixmap-formats-len :initarg :pixmap-formats-len :type xcb:CARD8)
   (image-byte-order :initarg :image-byte-order :type xcb:CARD8)
   (bitmap-format-bit-order :initarg :bitmap-format-bit-order :type xcb:CARD8)
   (bitmap-format-scanline-unit :initarg :bitmap-format-scanline-unit :type xcb:CARD8)
   (bitmap-format-scanline-pad :initarg :bitmap-format-scanline-pad :type xcb:CARD8)
   (min-keycode :initarg :min-keycode :type xcb:KEYCODE)
   (max-keycode :initarg :max-keycode :type xcb:KEYCODE)
   (pad~1 :initform 4 :type xcb:-pad)
   (vendor :initarg :vendor :type xcb:-ignore)
   (vendor~ :initform
	    '(name vendor type xcb:char size
		   (xcb:-fieldref 'vendor-len))
	    :type xcb:-list)
   (pixmap-formats :initarg :pixmap-formats :type xcb:-ignore)
   (pixmap-formats~ :initform
		    '(name pixmap-formats type xcb:FORMAT size
			   (xcb:-fieldref 'pixmap-formats-len))
		    :type xcb:-list)
   (roots :initarg :roots :type xcb:-ignore)
   (roots~ :initform
	   '(name roots type xcb:SCREEN size
		  (xcb:-fieldref 'roots-len))
	   :type xcb:-list)))

(defconst xcb:ModMask:Shift 1)
(defconst xcb:ModMask:Lock 2)
(defconst xcb:ModMask:Control 4)
(defconst xcb:ModMask:1 8)
(defconst xcb:ModMask:2 16)
(defconst xcb:ModMask:3 32)
(defconst xcb:ModMask:4 64)
(defconst xcb:ModMask:5 128)
(defconst xcb:ModMask:Any 32768)

(defconst xcb:KeyButMask:Shift 1)
(defconst xcb:KeyButMask:Lock 2)
(defconst xcb:KeyButMask:Control 4)
(defconst xcb:KeyButMask:Mod1 8)
(defconst xcb:KeyButMask:Mod2 16)
(defconst xcb:KeyButMask:Mod3 32)
(defconst xcb:KeyButMask:Mod4 64)
(defconst xcb:KeyButMask:Mod5 128)
(defconst xcb:KeyButMask:Button1 256)
(defconst xcb:KeyButMask:Button2 512)
(defconst xcb:KeyButMask:Button3 1024)
(defconst xcb:KeyButMask:Button4 2048)
(defconst xcb:KeyButMask:Button5 4096)

(defconst xcb:Window:None 0)

(defclass xcb:KeyPress
  (xcb:-event)
  ((detail :initarg :detail :type xcb:KEYCODE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:INT16)
   (root-y :initarg :root-y :type xcb:INT16)
   (event-x :initarg :event-x :type xcb:INT16)
   (event-y :initarg :event-y :type xcb:INT16)
   (state :initarg :state :type xcb:CARD16)
   (same-screen :initarg :same-screen :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:KeyRelease
  (xcb:-event xcb:KeyPress)
  nil)

(defconst xcb:ButtonMask:1 256)
(defconst xcb:ButtonMask:2 512)
(defconst xcb:ButtonMask:3 1024)
(defconst xcb:ButtonMask:4 2048)
(defconst xcb:ButtonMask:5 4096)
(defconst xcb:ButtonMask:Any 32768)

(defclass xcb:ButtonPress
  (xcb:-event)
  ((detail :initarg :detail :type xcb:BUTTON)
   (time :initarg :time :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:INT16)
   (root-y :initarg :root-y :type xcb:INT16)
   (event-x :initarg :event-x :type xcb:INT16)
   (event-y :initarg :event-y :type xcb:INT16)
   (state :initarg :state :type xcb:CARD16)
   (same-screen :initarg :same-screen :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:ButtonRelease
  (xcb:-event xcb:ButtonPress)
  nil)

(defconst xcb:Motion:Normal 0)
(defconst xcb:Motion:Hint 1)

(defclass xcb:MotionNotify
  (xcb:-event)
  ((detail :initarg :detail :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:INT16)
   (root-y :initarg :root-y :type xcb:INT16)
   (event-x :initarg :event-x :type xcb:INT16)
   (event-y :initarg :event-y :type xcb:INT16)
   (state :initarg :state :type xcb:CARD16)
   (same-screen :initarg :same-screen :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)))

(defconst xcb:NotifyDetail:Ancestor 0)
(defconst xcb:NotifyDetail:Virtual 1)
(defconst xcb:NotifyDetail:Inferior 2)
(defconst xcb:NotifyDetail:Nonlinear 3)
(defconst xcb:NotifyDetail:NonlinearVirtual 4)
(defconst xcb:NotifyDetail:Pointer 5)
(defconst xcb:NotifyDetail:PointerRoot 6)
(defconst xcb:NotifyDetail:None 7)

(defconst xcb:NotifyMode:Normal 0)
(defconst xcb:NotifyMode:Grab 1)
(defconst xcb:NotifyMode:Ungrab 2)
(defconst xcb:NotifyMode:WhileGrabbed 3)

(defclass xcb:EnterNotify
  (xcb:-event)
  ((detail :initarg :detail :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:INT16)
   (root-y :initarg :root-y :type xcb:INT16)
   (event-x :initarg :event-x :type xcb:INT16)
   (event-y :initarg :event-y :type xcb:INT16)
   (state :initarg :state :type xcb:CARD16)
   (mode :initarg :mode :type xcb:BYTE)
   (same-screen-focus :initarg :same-screen-focus :type xcb:BYTE)))

(defclass xcb:LeaveNotify
  (xcb:-event xcb:EnterNotify)
  nil)

(defclass xcb:FocusIn
  (xcb:-event)
  ((detail :initarg :detail :type xcb:BYTE)
   (event :initarg :event :type xcb:WINDOW)
   (mode :initarg :mode :type xcb:BYTE)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:FocusOut
  (xcb:-event xcb:FocusIn)
  nil)

(defclass xcb:KeymapNotify
  (xcb:-event)
  ((keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD8 size 31)
	  :type xcb:-list)))

(defclass xcb:Expose
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (x :initarg :x :type xcb:CARD16)
   (y :initarg :y :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (count :initarg :count :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)))

(defclass xcb:GraphicsExposure
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (x :initarg :x :type xcb:CARD16)
   (y :initarg :y :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (count :initarg :count :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)
   (pad~1 :initform 3 :type xcb:-pad)))

(defclass xcb:NoExposure
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)
   (pad~1 :initform 1 :type xcb:-pad)))

(defconst xcb:Visibility:Unobscured 0)
(defconst xcb:Visibility:PartiallyObscured 1)
(defconst xcb:Visibility:FullyObscured 2)

(defclass xcb:VisibilityNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (state :initarg :state :type xcb:BYTE)
   (pad~1 :initform 3 :type xcb:-pad)))

(defclass xcb:CreateNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (parent :initarg :parent :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (border-width :initarg :border-width :type xcb:CARD16)
   (override-redirect :initarg :override-redirect :type xcb:BOOL)
   (pad~1 :initform 1 :type xcb:-pad)))

(defclass xcb:DestroyNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:UnmapNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (from-configure :initarg :from-configure :type xcb:BOOL)
   (pad~1 :initform 3 :type xcb:-pad)))

(defclass xcb:MapNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (override-redirect :initarg :override-redirect :type xcb:BOOL)
   (pad~1 :initform 3 :type xcb:-pad)))

(defclass xcb:MapRequest
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (parent :initarg :parent :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:ReparentNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (parent :initarg :parent :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (override-redirect :initarg :override-redirect :type xcb:BOOL)
   (pad~1 :initform 3 :type xcb:-pad)))

(defclass xcb:ConfigureNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (above-sibling :initarg :above-sibling :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (border-width :initarg :border-width :type xcb:CARD16)
   (override-redirect :initarg :override-redirect :type xcb:BOOL)
   (pad~1 :initform 1 :type xcb:-pad)))

(defclass xcb:ConfigureRequest
  (xcb:-event)
  ((stack-mode :initarg :stack-mode :type xcb:BYTE)
   (parent :initarg :parent :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (sibling :initarg :sibling :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (border-width :initarg :border-width :type xcb:CARD16)
   (value-mask :initarg :value-mask :type xcb:CARD16)))

(defclass xcb:GravityNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)))

(defclass xcb:ResizeRequest
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defconst xcb:Place:OnTop 0)
(defconst xcb:Place:OnBottom 1)

(defclass xcb:CirculateNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event :initarg :event :type xcb:WINDOW)
   (window :initarg :window :type xcb:WINDOW)
   (pad~1 :initform 4 :type xcb:-pad)
   (place :initarg :place :type xcb:BYTE)
   (pad~2 :initform 3 :type xcb:-pad)))

(defclass xcb:CirculateRequest
  (xcb:-event xcb:CirculateNotify)
  nil)

(defconst xcb:Property:NewValue 0)
(defconst xcb:Property:Delete 1)

(defclass xcb:PropertyNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (atom :initarg :atom :type xcb:ATOM)
   (time :initarg :time :type xcb:TIMESTAMP)
   (state :initarg :state :type xcb:BYTE)
   (pad~1 :initform 3 :type xcb:-pad)))

(defclass xcb:SelectionClear
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)
   (owner :initarg :owner :type xcb:WINDOW)
   (selection :initarg :selection :type xcb:ATOM)))

(defconst xcb:Time:CurrentTime 0)

(defconst xcb:Atom:None 0)
(defconst xcb:Atom:Any 0)
(defconst xcb:Atom:PRIMARY 1)
(defconst xcb:Atom:SECONDARY 2)
(defconst xcb:Atom:ARC 3)
(defconst xcb:Atom:ATOM 4)
(defconst xcb:Atom:BITMAP 5)
(defconst xcb:Atom:CARDINAL 6)
(defconst xcb:Atom:COLORMAP 7)
(defconst xcb:Atom:CURSOR 8)
(defconst xcb:Atom:CUT_BUFFER0 9)
(defconst xcb:Atom:CUT_BUFFER1 10)
(defconst xcb:Atom:CUT_BUFFER2 11)
(defconst xcb:Atom:CUT_BUFFER3 12)
(defconst xcb:Atom:CUT_BUFFER4 13)
(defconst xcb:Atom:CUT_BUFFER5 14)
(defconst xcb:Atom:CUT_BUFFER6 15)
(defconst xcb:Atom:CUT_BUFFER7 16)
(defconst xcb:Atom:DRAWABLE 17)
(defconst xcb:Atom:FONT 18)
(defconst xcb:Atom:INTEGER 19)
(defconst xcb:Atom:PIXMAP 20)
(defconst xcb:Atom:POINT 21)
(defconst xcb:Atom:RECTANGLE 22)
(defconst xcb:Atom:RESOURCE_MANAGER 23)
(defconst xcb:Atom:RGB_COLOR_MAP 24)
(defconst xcb:Atom:RGB_BEST_MAP 25)
(defconst xcb:Atom:RGB_BLUE_MAP 26)
(defconst xcb:Atom:RGB_DEFAULT_MAP 27)
(defconst xcb:Atom:RGB_GRAY_MAP 28)
(defconst xcb:Atom:RGB_GREEN_MAP 29)
(defconst xcb:Atom:RGB_RED_MAP 30)
(defconst xcb:Atom:STRING 31)
(defconst xcb:Atom:VISUALID 32)
(defconst xcb:Atom:WINDOW 33)
(defconst xcb:Atom:WM_COMMAND 34)
(defconst xcb:Atom:WM_HINTS 35)
(defconst xcb:Atom:WM_CLIENT_MACHINE 36)
(defconst xcb:Atom:WM_ICON_NAME 37)
(defconst xcb:Atom:WM_ICON_SIZE 38)
(defconst xcb:Atom:WM_NAME 39)
(defconst xcb:Atom:WM_NORMAL_HINTS 40)
(defconst xcb:Atom:WM_SIZE_HINTS 41)
(defconst xcb:Atom:WM_ZOOM_HINTS 42)
(defconst xcb:Atom:MIN_SPACE 43)
(defconst xcb:Atom:NORM_SPACE 44)
(defconst xcb:Atom:MAX_SPACE 45)
(defconst xcb:Atom:END_SPACE 46)
(defconst xcb:Atom:SUPERSCRIPT_X 47)
(defconst xcb:Atom:SUPERSCRIPT_Y 48)
(defconst xcb:Atom:SUBSCRIPT_X 49)
(defconst xcb:Atom:SUBSCRIPT_Y 50)
(defconst xcb:Atom:UNDERLINE_POSITION 51)
(defconst xcb:Atom:UNDERLINE_THICKNESS 52)
(defconst xcb:Atom:STRIKEOUT_ASCENT 53)
(defconst xcb:Atom:STRIKEOUT_DESCENT 54)
(defconst xcb:Atom:ITALIC_ANGLE 55)
(defconst xcb:Atom:X_HEIGHT 56)
(defconst xcb:Atom:QUAD_WIDTH 57)
(defconst xcb:Atom:WEIGHT 58)
(defconst xcb:Atom:POINT_SIZE 59)
(defconst xcb:Atom:RESOLUTION 60)
(defconst xcb:Atom:COPYRIGHT 61)
(defconst xcb:Atom:NOTICE 62)
(defconst xcb:Atom:FONT_NAME 63)
(defconst xcb:Atom:FAMILY_NAME 64)
(defconst xcb:Atom:FULL_NAME 65)
(defconst xcb:Atom:CAP_HEIGHT 66)
(defconst xcb:Atom:WM_CLASS 67)
(defconst xcb:Atom:WM_TRANSIENT_FOR 68)

(defclass xcb:SelectionRequest
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)
   (owner :initarg :owner :type xcb:WINDOW)
   (requestor :initarg :requestor :type xcb:WINDOW)
   (selection :initarg :selection :type xcb:ATOM)
   (target :initarg :target :type xcb:ATOM)
   (property :initarg :property :type xcb:ATOM)))

(defclass xcb:SelectionNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)
   (requestor :initarg :requestor :type xcb:WINDOW)
   (selection :initarg :selection :type xcb:ATOM)
   (target :initarg :target :type xcb:ATOM)
   (property :initarg :property :type xcb:ATOM)))

(defconst xcb:ColormapState:Uninstalled 0)
(defconst xcb:ColormapState:Installed 1)

(defconst xcb:Colormap:None 0)

(defclass xcb:ColormapNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (colormap :initarg :colormap :type xcb:COLORMAP)
   (new :initarg :new :type xcb:BOOL)
   (state :initarg :state :type xcb:BYTE)
   (pad~1 :initform 2 :type xcb:-pad)))

(defclass xcb:ClientMessageData
  (xcb:-union)
  ((data8 :initarg :data8 :type xcb:-ignore)
   (data8~ :initform
	   '(name data8 type xcb:CARD8 size 20)
	   :type xcb:-list)
   (data16 :initarg :data16 :type xcb:-ignore)
   (data16~ :initform
	    '(name data16 type xcb:CARD16 size 10)
	    :type xcb:-list)
   (data32 :initarg :data32 :type xcb:-ignore)
   (data32~ :initform
	    '(name data32 type xcb:CARD32 size 5)
	    :type xcb:-list)))

(defclass xcb:ClientMessage
  (xcb:-event)
  ((format :initarg :format :type xcb:CARD8)
   (window :initarg :window :type xcb:WINDOW)
   (type :initarg :type :type xcb:ATOM)
   (data :initarg :data :type xcb:ClientMessageData)))

(defconst xcb:Mapping:Modifier 0)
(defconst xcb:Mapping:Keyboard 1)
(defconst xcb:Mapping:Pointer 2)

(defclass xcb:MappingNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (request :initarg :request :type xcb:BYTE)
   (first-keycode :initarg :first-keycode :type xcb:KEYCODE)
   (count :initarg :count :type xcb:CARD8)
   (pad~1 :initform 1 :type xcb:-pad)))

(defclass xcb:GeGeneric
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (pad~0 :initform 22 :type xcb:-pad)))

(defclass xcb:Request
  (xcb:-error)
  ((bad-value :initarg :bad-value :type xcb:CARD32)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:Value
  (xcb:-error)
  ((bad-value :initarg :bad-value :type xcb:CARD32)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:Window
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Pixmap
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Atom
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Cursor
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Font
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Match
  (xcb:-error xcb:Request)
  nil)

(defclass xcb:Drawable
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Access
  (xcb:-error xcb:Request)
  nil)

(defclass xcb:Alloc
  (xcb:-error xcb:Request)
  nil)

(defclass xcb:Colormap
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:GContext
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:IDChoice
  (xcb:-error xcb:Value)
  nil)

(defclass xcb:Name
  (xcb:-error xcb:Request)
  nil)

(defclass xcb:Length
  (xcb:-error xcb:Request)
  nil)

(defclass xcb:Implementation
  (xcb:-error xcb:Request)
  nil)

(defconst xcb:WindowClass:CopyFromParent 0)
(defconst xcb:WindowClass:InputOutput 1)
(defconst xcb:WindowClass:InputOnly 2)

(defconst xcb:CW:BackPixmap 1)
(defconst xcb:CW:BackPixel 2)
(defconst xcb:CW:BorderPixmap 4)
(defconst xcb:CW:BorderPixel 8)
(defconst xcb:CW:BitGravity 16)
(defconst xcb:CW:WinGravity 32)
(defconst xcb:CW:BackingStore 64)
(defconst xcb:CW:BackingPlanes 128)
(defconst xcb:CW:BackingPixel 256)
(defconst xcb:CW:OverrideRedirect 512)
(defconst xcb:CW:SaveUnder 1024)
(defconst xcb:CW:EventMask 2048)
(defconst xcb:CW:DontPropagate 4096)
(defconst xcb:CW:Colormap 8192)
(defconst xcb:CW:Cursor 16384)

(defconst xcb:BackPixmap:None 0)
(defconst xcb:BackPixmap:ParentRelative 1)

(defconst xcb:Gravity:BitForget 0)
(defconst xcb:Gravity:WinUnmap 0)
(defconst xcb:Gravity:NorthWest 1)
(defconst xcb:Gravity:North 2)
(defconst xcb:Gravity:NorthEast 3)
(defconst xcb:Gravity:West 4)
(defconst xcb:Gravity:Center 5)
(defconst xcb:Gravity:East 6)
(defconst xcb:Gravity:SouthWest 7)
(defconst xcb:Gravity:South 8)
(defconst xcb:Gravity:SouthEast 9)
(defconst xcb:Gravity:Static 10)

(defclass xcb:CreateWindow
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (depth :initarg :depth :type xcb:CARD8)
   (wid :initarg :wid :type xcb:WINDOW)
   (parent :initarg :parent :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (border-width :initarg :border-width :type xcb:CARD16)
   (class :initarg :class :type xcb:CARD16)
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

(defclass xcb:ChangeWindowAttributes
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
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

(defconst xcb:MapState:Unmapped 0)
(defconst xcb:MapState:Unviewable 1)
(defconst xcb:MapState:Viewable 2)

(defclass xcb:GetWindowAttributes
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:GetWindowAttributes~reply
  (xcb:-reply)
  ((backing-store :initarg :backing-store :type xcb:CARD8)
   (visual :initarg :visual :type xcb:VISUALID)
   (class :initarg :class :type xcb:CARD16)
   (bit-gravity :initarg :bit-gravity :type xcb:CARD8)
   (win-gravity :initarg :win-gravity :type xcb:CARD8)
   (backing-planes :initarg :backing-planes :type xcb:CARD32)
   (backing-pixel :initarg :backing-pixel :type xcb:CARD32)
   (save-under :initarg :save-under :type xcb:BOOL)
   (map-is-installed :initarg :map-is-installed :type xcb:BOOL)
   (map-state :initarg :map-state :type xcb:CARD8)
   (override-redirect :initarg :override-redirect :type xcb:BOOL)
   (colormap :initarg :colormap :type xcb:COLORMAP)
   (all-event-masks :initarg :all-event-masks :type xcb:CARD32)
   (your-event-mask :initarg :your-event-mask :type xcb:CARD32)
   (do-not-propagate-mask :initarg :do-not-propagate-mask :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:DestroyWindow
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:DestroySubwindows
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))

(defconst xcb:SetMode:Insert 0)
(defconst xcb:SetMode:Delete 1)

(defclass xcb:ChangeSaveSet
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (mode :initarg :mode :type xcb:BYTE)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:ReparentWindow
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (parent :initarg :parent :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)))

(defclass xcb:MapWindow
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:MapSubwindows
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:UnmapWindow
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:UnmapSubwindows
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))

(defconst xcb:ConfigWindow:X 1)
(defconst xcb:ConfigWindow:Y 2)
(defconst xcb:ConfigWindow:Width 4)
(defconst xcb:ConfigWindow:Height 8)
(defconst xcb:ConfigWindow:BorderWidth 16)
(defconst xcb:ConfigWindow:Sibling 32)
(defconst xcb:ConfigWindow:StackMode 64)

(defconst xcb:StackMode:Above 0)
(defconst xcb:StackMode:Below 1)
(defconst xcb:StackMode:TopIf 2)
(defconst xcb:StackMode:BottomIf 3)
(defconst xcb:StackMode:Opposite 4)

(defclass xcb:ConfigureWindow
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (value-mask :initarg :value-mask :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:ConfigWindow:X x)
		  (xcb:ConfigWindow:Y y)
		  (xcb:ConfigWindow:Width width)
		  (xcb:ConfigWindow:Height height)
		  (xcb:ConfigWindow:BorderWidth border-width)
		  (xcb:ConfigWindow:Sibling sibling)
		  (xcb:ConfigWindow:StackMode stack-mode)))
	       :type xcb:-switch)
   (x :initarg :x :type xcb:INT32)
   (y :initarg :y :type xcb:INT32)
   (width :initarg :width :type xcb:CARD32)
   (height :initarg :height :type xcb:CARD32)
   (border-width :initarg :border-width :type xcb:CARD32)
   (sibling :initarg :sibling :type xcb:WINDOW)
   (stack-mode :initarg :stack-mode :type xcb:CARD32)))

(defconst xcb:Circulate:RaiseLowest 0)
(defconst xcb:Circulate:LowerHighest 1)

(defclass xcb:CirculateWindow
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (direction :initarg :direction :type xcb:CARD8)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:GetGeometry
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))
(defclass xcb:GetGeometry~reply
  (xcb:-reply)
  ((depth :initarg :depth :type xcb:CARD8)
   (root :initarg :root :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (border-width :initarg :border-width :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:QueryTree
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:QueryTree~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (root :initarg :root :type xcb:WINDOW)
   (parent :initarg :parent :type xcb:WINDOW)
   (children-len :initarg :children-len :type xcb:CARD16)
   (pad~1 :initform 14 :type xcb:-pad)
   (children :initarg :children :type xcb:-ignore)
   (children~ :initform
	      '(name children type xcb:WINDOW size
		     (xcb:-fieldref 'children-len))
	      :type xcb:-list)))

(defclass xcb:InternAtom
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (only-if-exists :initarg :only-if-exists :type xcb:BOOL)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))
(defclass xcb:InternAtom~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (atom :initarg :atom :type xcb:ATOM)))

(defclass xcb:GetAtomName
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (atom :initarg :atom :type xcb:ATOM)))
(defclass xcb:GetAtomName~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defconst xcb:PropMode:Replace 0)
(defconst xcb:PropMode:Prepend 1)
(defconst xcb:PropMode:Append 2)

(defclass xcb:ChangeProperty
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (mode :initarg :mode :type xcb:CARD8)
   (window :initarg :window :type xcb:WINDOW)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (format :initarg :format :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (data-len :initarg :data-len :type xcb:CARD32)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:void size
		 (/
		  (*
		   (xcb:-fieldref 'data-len)
		   (xcb:-fieldref 'format))
		  8))
	  :type xcb:-list)))

(defclass xcb:DeleteProperty
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (property :initarg :property :type xcb:ATOM)))

(defconst xcb:GetPropertyType:Any 0)

(defclass xcb:GetProperty
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (delete :initarg :delete :type xcb:BOOL)
   (window :initarg :window :type xcb:WINDOW)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (long-offset :initarg :long-offset :type xcb:CARD32)
   (long-length :initarg :long-length :type xcb:CARD32)))
(defclass xcb:GetProperty~reply
  (xcb:-reply)
  ((format :initarg :format :type xcb:CARD8)
   (type :initarg :type :type xcb:ATOM)
   (bytes-after :initarg :bytes-after :type xcb:CARD32)
   (value-len :initarg :value-len :type xcb:CARD32)
   (pad~0 :initform 12 :type xcb:-pad)
   (value :initarg :value :type xcb:-ignore)
   (value~ :initform
	   '(name value type xcb:void size
		  (*
		   (xcb:-fieldref 'value-len)
		   (/
		    (xcb:-fieldref 'format)
		    8)))
	   :type xcb:-list)))

(defclass xcb:ListProperties
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:ListProperties~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (atoms-len :initarg :atoms-len :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (atoms :initarg :atoms :type xcb:-ignore)
   (atoms~ :initform
	   '(name atoms type xcb:ATOM size
		  (xcb:-fieldref 'atoms-len))
	   :type xcb:-list)))

(defclass xcb:SetSelectionOwner
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (owner :initarg :owner :type xcb:WINDOW)
   (selection :initarg :selection :type xcb:ATOM)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defclass xcb:GetSelectionOwner
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (selection :initarg :selection :type xcb:ATOM)))
(defclass xcb:GetSelectionOwner~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (owner :initarg :owner :type xcb:WINDOW)))

(defclass xcb:ConvertSelection
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (requestor :initarg :requestor :type xcb:WINDOW)
   (selection :initarg :selection :type xcb:ATOM)
   (target :initarg :target :type xcb:ATOM)
   (property :initarg :property :type xcb:ATOM)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defconst xcb:SendEventDest:PointerWindow 0)
(defconst xcb:SendEventDest:ItemFocus 1)

(defclass xcb:SendEvent
  (xcb:-request)
  ((~opcode :initform 25 :type xcb:-u1)
   (propagate :initarg :propagate :type xcb:BOOL)
   (destination :initarg :destination :type xcb:WINDOW)
   (event-mask :initarg :event-mask :type xcb:CARD32)
   (event :initarg :event :type xcb:-ignore)
   (event~ :initform
	   '(name event type xcb:char size 32)
	   :type xcb:-list)))

(defconst xcb:GrabMode:Sync 0)
(defconst xcb:GrabMode:Async 1)

(defconst xcb:GrabStatus:Success 0)
(defconst xcb:GrabStatus:AlreadyGrabbed 1)
(defconst xcb:GrabStatus:InvalidTime 2)
(defconst xcb:GrabStatus:NotViewable 3)
(defconst xcb:GrabStatus:Frozen 4)

(defconst xcb:Cursor:None 0)

(defclass xcb:GrabPointer
  (xcb:-request)
  ((~opcode :initform 26 :type xcb:-u1)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (event-mask :initarg :event-mask :type xcb:CARD16)
   (pointer-mode :initarg :pointer-mode :type xcb:BYTE)
   (keyboard-mode :initarg :keyboard-mode :type xcb:BYTE)
   (confine-to :initarg :confine-to :type xcb:WINDOW)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (time :initarg :time :type xcb:TIMESTAMP)))
(defclass xcb:GrabPointer~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:BYTE)))

(defclass xcb:UngrabPointer
  (xcb:-request)
  ((~opcode :initform 27 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defconst xcb:ButtonIndex:Any 0)
(defconst xcb:ButtonIndex:1 1)
(defconst xcb:ButtonIndex:2 2)
(defconst xcb:ButtonIndex:3 3)
(defconst xcb:ButtonIndex:4 4)
(defconst xcb:ButtonIndex:5 5)

(defclass xcb:GrabButton
  (xcb:-request)
  ((~opcode :initform 28 :type xcb:-u1)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (event-mask :initarg :event-mask :type xcb:CARD16)
   (pointer-mode :initarg :pointer-mode :type xcb:CARD8)
   (keyboard-mode :initarg :keyboard-mode :type xcb:CARD8)
   (confine-to :initarg :confine-to :type xcb:WINDOW)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (button :initarg :button :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (modifiers :initarg :modifiers :type xcb:CARD16)))

(defclass xcb:UngrabButton
  (xcb:-request)
  ((~opcode :initform 29 :type xcb:-u1)
   (button :initarg :button :type xcb:CARD8)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:ChangeActivePointerGrab
  (xcb:-request)
  ((~opcode :initform 30 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (time :initarg :time :type xcb:TIMESTAMP)
   (event-mask :initarg :event-mask :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)))

(defclass xcb:GrabKeyboard
  (xcb:-request)
  ((~opcode :initform 31 :type xcb:-u1)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)
   (pointer-mode :initarg :pointer-mode :type xcb:BYTE)
   (keyboard-mode :initarg :keyboard-mode :type xcb:BYTE)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:GrabKeyboard~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:BYTE)))

(defclass xcb:UngrabKeyboard
  (xcb:-request)
  ((~opcode :initform 32 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defconst xcb:Grab:Any 0)

(defclass xcb:GrabKey
  (xcb:-request)
  ((~opcode :initform 33 :type xcb:-u1)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (key :initarg :key :type xcb:KEYCODE)
   (pointer-mode :initarg :pointer-mode :type xcb:CARD8)
   (keyboard-mode :initarg :keyboard-mode :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:UngrabKey
  (xcb:-request)
  ((~opcode :initform 34 :type xcb:-u1)
   (key :initarg :key :type xcb:KEYCODE)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defconst xcb:Allow:AsyncPointer 0)
(defconst xcb:Allow:SyncPointer 1)
(defconst xcb:Allow:ReplayPointer 2)
(defconst xcb:Allow:AsyncKeyboard 3)
(defconst xcb:Allow:SyncKeyboard 4)
(defconst xcb:Allow:ReplayKeyboard 5)
(defconst xcb:Allow:AsyncBoth 6)
(defconst xcb:Allow:SyncBoth 7)

(defclass xcb:AllowEvents
  (xcb:-request)
  ((~opcode :initform 35 :type xcb:-u1)
   (mode :initarg :mode :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defclass xcb:GrabServer
  (xcb:-request)
  ((~opcode :initform 36 :type xcb:-u1)))

(defclass xcb:UngrabServer
  (xcb:-request)
  ((~opcode :initform 37 :type xcb:-u1)))

(defclass xcb:QueryPointer
  (xcb:-request)
  ((~opcode :initform 38 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:QueryPointer~reply
  (xcb:-reply)
  ((same-screen :initarg :same-screen :type xcb:BOOL)
   (root :initarg :root :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:INT16)
   (root-y :initarg :root-y :type xcb:INT16)
   (win-x :initarg :win-x :type xcb:INT16)
   (win-y :initarg :win-y :type xcb:INT16)
   (mask :initarg :mask :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:TIMECOORD
  (xcb:-struct)
  ((time :initarg :time :type xcb:TIMESTAMP)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)))

(defclass xcb:GetMotionEvents
  (xcb:-request)
  ((~opcode :initform 39 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (start :initarg :start :type xcb:TIMESTAMP)
   (stop :initarg :stop :type xcb:TIMESTAMP)))
(defclass xcb:GetMotionEvents~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (events-len :initarg :events-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (events :initarg :events :type xcb:-ignore)
   (events~ :initform
	    '(name events type xcb:TIMECOORD size
		   (xcb:-fieldref 'events-len))
	    :type xcb:-list)))

(defclass xcb:TranslateCoordinates
  (xcb:-request)
  ((~opcode :initform 40 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (src-window :initarg :src-window :type xcb:WINDOW)
   (dst-window :initarg :dst-window :type xcb:WINDOW)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)))
(defclass xcb:TranslateCoordinates~reply
  (xcb:-reply)
  ((same-screen :initarg :same-screen :type xcb:BOOL)
   (child :initarg :child :type xcb:WINDOW)
   (dst-x :initarg :dst-x :type xcb:INT16)
   (dst-y :initarg :dst-y :type xcb:INT16)))

(defclass xcb:WarpPointer
  (xcb:-request)
  ((~opcode :initform 41 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (src-window :initarg :src-window :type xcb:WINDOW)
   (dst-window :initarg :dst-window :type xcb:WINDOW)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (src-width :initarg :src-width :type xcb:CARD16)
   (src-height :initarg :src-height :type xcb:CARD16)
   (dst-x :initarg :dst-x :type xcb:INT16)
   (dst-y :initarg :dst-y :type xcb:INT16)))

(defconst xcb:InputFocus:None 0)
(defconst xcb:InputFocus:PointerRoot 1)
(defconst xcb:InputFocus:Parent 2)
(defconst xcb:InputFocus:FollowKeyboard 3)

(defclass xcb:SetInputFocus
  (xcb:-request)
  ((~opcode :initform 42 :type xcb:-u1)
   (revert-to :initarg :revert-to :type xcb:CARD8)
   (focus :initarg :focus :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defclass xcb:GetInputFocus
  (xcb:-request)
  ((~opcode :initform 43 :type xcb:-u1)))
(defclass xcb:GetInputFocus~reply
  (xcb:-reply)
  ((revert-to :initarg :revert-to :type xcb:CARD8)
   (focus :initarg :focus :type xcb:WINDOW)))

(defclass xcb:QueryKeymap
  (xcb:-request)
  ((~opcode :initform 44 :type xcb:-u1)))
(defclass xcb:QueryKeymap~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD8 size 32)
	  :type xcb:-list)))

(defclass xcb:OpenFont
  (xcb:-request)
  ((~opcode :initform 45 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (fid :initarg :fid :type xcb:FONT)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:CloseFont
  (xcb:-request)
  ((~opcode :initform 46 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (font :initarg :font :type xcb:FONT)))

(defconst xcb:FontDraw:LeftToRight 0)
(defconst xcb:FontDraw:RightToLeft 1)

(defclass xcb:FONTPROP
  (xcb:-struct)
  ((name :initarg :name :type xcb:ATOM)
   (value :initarg :value :type xcb:CARD32)))

(defclass xcb:CHARINFO
  (xcb:-struct)
  ((left-side-bearing :initarg :left-side-bearing :type xcb:INT16)
   (right-side-bearing :initarg :right-side-bearing :type xcb:INT16)
   (character-width :initarg :character-width :type xcb:INT16)
   (ascent :initarg :ascent :type xcb:INT16)
   (descent :initarg :descent :type xcb:INT16)
   (attributes :initarg :attributes :type xcb:CARD16)))

(defclass xcb:QueryFont
  (xcb:-request)
  ((~opcode :initform 47 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (font :initarg :font :type xcb:FONTABLE)))
(defclass xcb:QueryFont~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (min-bounds :initarg :min-bounds :type xcb:CHARINFO)
   (pad~1 :initform 4 :type xcb:-pad)
   (max-bounds :initarg :max-bounds :type xcb:CHARINFO)
   (pad~2 :initform 4 :type xcb:-pad)
   (min-char-or-byte2 :initarg :min-char-or-byte2 :type xcb:CARD16)
   (max-char-or-byte2 :initarg :max-char-or-byte2 :type xcb:CARD16)
   (default-char :initarg :default-char :type xcb:CARD16)
   (properties-len :initarg :properties-len :type xcb:CARD16)
   (draw-direction :initarg :draw-direction :type xcb:BYTE)
   (min-byte1 :initarg :min-byte1 :type xcb:CARD8)
   (max-byte1 :initarg :max-byte1 :type xcb:CARD8)
   (all-chars-exist :initarg :all-chars-exist :type xcb:BOOL)
   (font-ascent :initarg :font-ascent :type xcb:INT16)
   (font-descent :initarg :font-descent :type xcb:INT16)
   (char-infos-len :initarg :char-infos-len :type xcb:CARD32)
   (properties :initarg :properties :type xcb:-ignore)
   (properties~ :initform
		'(name properties type xcb:FONTPROP size
		       (xcb:-fieldref 'properties-len))
		:type xcb:-list)
   (char-infos :initarg :char-infos :type xcb:-ignore)
   (char-infos~ :initform
		'(name char-infos type xcb:CHARINFO size
		       (xcb:-fieldref 'char-infos-len))
		:type xcb:-list)))

(defclass xcb:QueryTextExtents
  (xcb:-request)
  ((~opcode :initform 48 :type xcb:-u1)
   (odd-length :type xcb:BOOL)
   (font :initarg :font :type xcb:FONTABLE)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:CHAR2B size nil)
	    :type xcb:-list)))
(cl-defmethod xcb:marshal
    ((obj xcb:QueryTextExtents)
     connection)
  nil
  (setf
   (slot-value obj 'odd-length)
   '(logand
     (xcb:-fieldref 'string-len)
     1))
  (cl-call-next-method obj connection))
(defclass xcb:QueryTextExtents~reply
  (xcb:-reply)
  ((draw-direction :initarg :draw-direction :type xcb:BYTE)
   (font-ascent :initarg :font-ascent :type xcb:INT16)
   (font-descent :initarg :font-descent :type xcb:INT16)
   (overall-ascent :initarg :overall-ascent :type xcb:INT16)
   (overall-descent :initarg :overall-descent :type xcb:INT16)
   (overall-width :initarg :overall-width :type xcb:INT32)
   (overall-left :initarg :overall-left :type xcb:INT32)
   (overall-right :initarg :overall-right :type xcb:INT32)))

(defclass xcb:STR
  (xcb:-struct)
  ((name-len :initarg :name-len :type xcb:CARD8)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:ListFonts
  (xcb:-request)
  ((~opcode :initform 49 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (max-names :initarg :max-names :type xcb:CARD16)
   (pattern-len :initarg :pattern-len :type xcb:CARD16)
   (pattern :initarg :pattern :type xcb:-ignore)
   (pattern~ :initform
	     '(name pattern type xcb:char size
		    (xcb:-fieldref 'pattern-len))
	     :type xcb:-list)))
(defclass xcb:ListFonts~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (names-len :initarg :names-len :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (names :initarg :names :type xcb:-ignore)
   (names~ :initform
	   '(name names type xcb:STR size
		  (xcb:-fieldref 'names-len))
	   :type xcb:-list)))

(defclass xcb:ListFontsWithInfo
  (xcb:-request)
  ((~opcode :initform 50 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (max-names :initarg :max-names :type xcb:CARD16)
   (pattern-len :initarg :pattern-len :type xcb:CARD16)
   (pattern :initarg :pattern :type xcb:-ignore)
   (pattern~ :initform
	     '(name pattern type xcb:char size
		    (xcb:-fieldref 'pattern-len))
	     :type xcb:-list)))
(defclass xcb:ListFontsWithInfo~reply
  (xcb:-reply)
  ((name-len :initarg :name-len :type xcb:CARD8)
   (min-bounds :initarg :min-bounds :type xcb:CHARINFO)
   (pad~0 :initform 4 :type xcb:-pad)
   (max-bounds :initarg :max-bounds :type xcb:CHARINFO)
   (pad~1 :initform 4 :type xcb:-pad)
   (min-char-or-byte2 :initarg :min-char-or-byte2 :type xcb:CARD16)
   (max-char-or-byte2 :initarg :max-char-or-byte2 :type xcb:CARD16)
   (default-char :initarg :default-char :type xcb:CARD16)
   (properties-len :initarg :properties-len :type xcb:CARD16)
   (draw-direction :initarg :draw-direction :type xcb:BYTE)
   (min-byte1 :initarg :min-byte1 :type xcb:CARD8)
   (max-byte1 :initarg :max-byte1 :type xcb:CARD8)
   (all-chars-exist :initarg :all-chars-exist :type xcb:BOOL)
   (font-ascent :initarg :font-ascent :type xcb:INT16)
   (font-descent :initarg :font-descent :type xcb:INT16)
   (replies-hint :initarg :replies-hint :type xcb:CARD32)
   (properties :initarg :properties :type xcb:-ignore)
   (properties~ :initform
		'(name properties type xcb:FONTPROP size
		       (xcb:-fieldref 'properties-len))
		:type xcb:-list)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:SetFontPath
  (xcb:-request)
  ((~opcode :initform 51 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (font-qty :initarg :font-qty :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (font :initarg :font :type xcb:-ignore)
   (font~ :initform
	  '(name font type xcb:STR size
		 (xcb:-fieldref 'font-qty))
	  :type xcb:-list)))

(defclass xcb:GetFontPath
  (xcb:-request)
  ((~opcode :initform 52 :type xcb:-u1)))
(defclass xcb:GetFontPath~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (path-len :initarg :path-len :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (path :initarg :path :type xcb:-ignore)
   (path~ :initform
	  '(name path type xcb:STR size
		 (xcb:-fieldref 'path-len))
	  :type xcb:-list)))

(defclass xcb:CreatePixmap
  (xcb:-request)
  ((~opcode :initform 53 :type xcb:-u1)
   (depth :initarg :depth :type xcb:CARD8)
   (pid :initarg :pid :type xcb:PIXMAP)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:FreePixmap
  (xcb:-request)
  ((~opcode :initform 54 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (pixmap :initarg :pixmap :type xcb:PIXMAP)))

(defconst xcb:GC:Function 1)
(defconst xcb:GC:PlaneMask 2)
(defconst xcb:GC:Foreground 4)
(defconst xcb:GC:Background 8)
(defconst xcb:GC:LineWidth 16)
(defconst xcb:GC:LineStyle 32)
(defconst xcb:GC:CapStyle 64)
(defconst xcb:GC:JoinStyle 128)
(defconst xcb:GC:FillStyle 256)
(defconst xcb:GC:FillRule 512)
(defconst xcb:GC:Tile 1024)
(defconst xcb:GC:Stipple 2048)
(defconst xcb:GC:TileStippleOriginX 4096)
(defconst xcb:GC:TileStippleOriginY 8192)
(defconst xcb:GC:Font 16384)
(defconst xcb:GC:SubwindowMode 32768)
(defconst xcb:GC:GraphicsExposures 65536)
(defconst xcb:GC:ClipOriginX 131072)
(defconst xcb:GC:ClipOriginY 262144)
(defconst xcb:GC:ClipMask 524288)
(defconst xcb:GC:DashOffset 1048576)
(defconst xcb:GC:DashList 2097152)
(defconst xcb:GC:ArcMode 4194304)

(defconst xcb:GX:clear 0)
(defconst xcb:GX:and 1)
(defconst xcb:GX:andReverse 2)
(defconst xcb:GX:copy 3)
(defconst xcb:GX:andInverted 4)
(defconst xcb:GX:noop 5)
(defconst xcb:GX:xor 6)
(defconst xcb:GX:or 7)
(defconst xcb:GX:nor 8)
(defconst xcb:GX:equiv 9)
(defconst xcb:GX:invert 10)
(defconst xcb:GX:orReverse 11)
(defconst xcb:GX:copyInverted 12)
(defconst xcb:GX:orInverted 13)
(defconst xcb:GX:nand 14)
(defconst xcb:GX:set 15)

(defconst xcb:LineStyle:Solid 0)
(defconst xcb:LineStyle:OnOffDash 1)
(defconst xcb:LineStyle:DoubleDash 2)

(defconst xcb:CapStyle:NotLast 0)
(defconst xcb:CapStyle:Butt 1)
(defconst xcb:CapStyle:Round 2)
(defconst xcb:CapStyle:Projecting 3)

(defconst xcb:JoinStyle:Miter 0)
(defconst xcb:JoinStyle:Round 1)
(defconst xcb:JoinStyle:Bevel 2)

(defconst xcb:FillStyle:Solid 0)
(defconst xcb:FillStyle:Tiled 1)
(defconst xcb:FillStyle:Stippled 2)
(defconst xcb:FillStyle:OpaqueStippled 3)

(defconst xcb:FillRule:EvenOdd 0)
(defconst xcb:FillRule:Winding 1)

(defconst xcb:SubwindowMode:ClipByChildren 0)
(defconst xcb:SubwindowMode:IncludeInferiors 1)

(defconst xcb:ArcMode:Chord 0)
(defconst xcb:ArcMode:PieSlice 1)

(defclass xcb:CreateGC
  (xcb:-request)
  ((~opcode :initform 55 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cid :initarg :cid :type xcb:GCONTEXT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:GC:Function function)
		  (xcb:GC:PlaneMask plane-mask)
		  (xcb:GC:Foreground foreground)
		  (xcb:GC:Background background)
		  (xcb:GC:LineWidth line-width)
		  (xcb:GC:LineStyle line-style)
		  (xcb:GC:CapStyle cap-style)
		  (xcb:GC:JoinStyle join-style)
		  (xcb:GC:FillStyle fill-style)
		  (xcb:GC:FillRule fill-rule)
		  (xcb:GC:Tile tile)
		  (xcb:GC:Stipple stipple)
		  (xcb:GC:TileStippleOriginX tile-stipple-x-origin)
		  (xcb:GC:TileStippleOriginY tile-stipple-y-origin)
		  (xcb:GC:Font font)
		  (xcb:GC:SubwindowMode subwindow-mode)
		  (xcb:GC:GraphicsExposures graphics-exposures)
		  (xcb:GC:ClipOriginX clip-x-origin)
		  (xcb:GC:ClipOriginY clip-y-origin)
		  (xcb:GC:ClipMask clip-mask)
		  (xcb:GC:DashOffset dash-offset)
		  (xcb:GC:DashList dashes)
		  (xcb:GC:ArcMode arc-mode)))
	       :type xcb:-switch)
   (function :initarg :function :type xcb:CARD32)
   (plane-mask :initarg :plane-mask :type xcb:CARD32)
   (foreground :initarg :foreground :type xcb:CARD32)
   (background :initarg :background :type xcb:CARD32)
   (line-width :initarg :line-width :type xcb:CARD32)
   (line-style :initarg :line-style :type xcb:CARD32)
   (cap-style :initarg :cap-style :type xcb:CARD32)
   (join-style :initarg :join-style :type xcb:CARD32)
   (fill-style :initarg :fill-style :type xcb:CARD32)
   (fill-rule :initarg :fill-rule :type xcb:CARD32)
   (tile :initarg :tile :type xcb:PIXMAP)
   (stipple :initarg :stipple :type xcb:PIXMAP)
   (tile-stipple-x-origin :initarg :tile-stipple-x-origin :type xcb:INT32)
   (tile-stipple-y-origin :initarg :tile-stipple-y-origin :type xcb:INT32)
   (font :initarg :font :type xcb:FONT)
   (subwindow-mode :initarg :subwindow-mode :type xcb:CARD32)
   (graphics-exposures :initarg :graphics-exposures :type xcb:BOOL32)
   (clip-x-origin :initarg :clip-x-origin :type xcb:INT32)
   (clip-y-origin :initarg :clip-y-origin :type xcb:INT32)
   (clip-mask :initarg :clip-mask :type xcb:PIXMAP)
   (dash-offset :initarg :dash-offset :type xcb:CARD32)
   (dashes :initarg :dashes :type xcb:CARD32)
   (arc-mode :initarg :arc-mode :type xcb:CARD32)))

(defclass xcb:ChangeGC
  (xcb:-request)
  ((~opcode :initform 56 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:GC:Function function)
		  (xcb:GC:PlaneMask plane-mask)
		  (xcb:GC:Foreground foreground)
		  (xcb:GC:Background background)
		  (xcb:GC:LineWidth line-width)
		  (xcb:GC:LineStyle line-style)
		  (xcb:GC:CapStyle cap-style)
		  (xcb:GC:JoinStyle join-style)
		  (xcb:GC:FillStyle fill-style)
		  (xcb:GC:FillRule fill-rule)
		  (xcb:GC:Tile tile)
		  (xcb:GC:Stipple stipple)
		  (xcb:GC:TileStippleOriginX tile-stipple-x-origin)
		  (xcb:GC:TileStippleOriginY tile-stipple-y-origin)
		  (xcb:GC:Font font)
		  (xcb:GC:SubwindowMode subwindow-mode)
		  (xcb:GC:GraphicsExposures graphics-exposures)
		  (xcb:GC:ClipOriginX clip-x-origin)
		  (xcb:GC:ClipOriginY clip-y-origin)
		  (xcb:GC:ClipMask clip-mask)
		  (xcb:GC:DashOffset dash-offset)
		  (xcb:GC:DashList dashes)
		  (xcb:GC:ArcMode arc-mode)))
	       :type xcb:-switch)
   (function :initarg :function :type xcb:CARD32)
   (plane-mask :initarg :plane-mask :type xcb:CARD32)
   (foreground :initarg :foreground :type xcb:CARD32)
   (background :initarg :background :type xcb:CARD32)
   (line-width :initarg :line-width :type xcb:CARD32)
   (line-style :initarg :line-style :type xcb:CARD32)
   (cap-style :initarg :cap-style :type xcb:CARD32)
   (join-style :initarg :join-style :type xcb:CARD32)
   (fill-style :initarg :fill-style :type xcb:CARD32)
   (fill-rule :initarg :fill-rule :type xcb:CARD32)
   (tile :initarg :tile :type xcb:PIXMAP)
   (stipple :initarg :stipple :type xcb:PIXMAP)
   (tile-stipple-x-origin :initarg :tile-stipple-x-origin :type xcb:INT32)
   (tile-stipple-y-origin :initarg :tile-stipple-y-origin :type xcb:INT32)
   (font :initarg :font :type xcb:FONT)
   (subwindow-mode :initarg :subwindow-mode :type xcb:CARD32)
   (graphics-exposures :initarg :graphics-exposures :type xcb:BOOL32)
   (clip-x-origin :initarg :clip-x-origin :type xcb:INT32)
   (clip-y-origin :initarg :clip-y-origin :type xcb:INT32)
   (clip-mask :initarg :clip-mask :type xcb:PIXMAP)
   (dash-offset :initarg :dash-offset :type xcb:CARD32)
   (dashes :initarg :dashes :type xcb:CARD32)
   (arc-mode :initarg :arc-mode :type xcb:CARD32)))

(defclass xcb:CopyGC
  (xcb:-request)
  ((~opcode :initform 57 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (src-gc :initarg :src-gc :type xcb:GCONTEXT)
   (dst-gc :initarg :dst-gc :type xcb:GCONTEXT)
   (value-mask :initarg :value-mask :type xcb:CARD32)))

(defclass xcb:SetDashes
  (xcb:-request)
  ((~opcode :initform 58 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (dash-offset :initarg :dash-offset :type xcb:CARD16)
   (dashes-len :initarg :dashes-len :type xcb:CARD16)
   (dashes :initarg :dashes :type xcb:-ignore)
   (dashes~ :initform
	    '(name dashes type xcb:CARD8 size
		   (xcb:-fieldref 'dashes-len))
	    :type xcb:-list)))

(defconst xcb:ClipOrdering:Unsorted 0)
(defconst xcb:ClipOrdering:YSorted 1)
(defconst xcb:ClipOrdering:YXSorted 2)
(defconst xcb:ClipOrdering:YXBanded 3)

(defclass xcb:SetClipRectangles
  (xcb:-request)
  ((~opcode :initform 59 :type xcb:-u1)
   (ordering :initarg :ordering :type xcb:BYTE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (clip-x-origin :initarg :clip-x-origin :type xcb:INT16)
   (clip-y-origin :initarg :clip-y-origin :type xcb:INT16)
   (rectangles :initarg :rectangles :type xcb:-ignore)
   (rectangles~ :initform
		'(name rectangles type xcb:RECTANGLE size nil)
		:type xcb:-list)))

(defclass xcb:FreeGC
  (xcb:-request)
  ((~opcode :initform 60 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (gc :initarg :gc :type xcb:GCONTEXT)))

(defclass xcb:ClearArea
  (xcb:-request)
  ((~opcode :initform 61 :type xcb:-u1)
   (exposures :initarg :exposures :type xcb:BOOL)
   (window :initarg :window :type xcb:WINDOW)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:CopyArea
  (xcb:-request)
  ((~opcode :initform 62 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (src-drawable :initarg :src-drawable :type xcb:DRAWABLE)
   (dst-drawable :initarg :dst-drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (dst-x :initarg :dst-x :type xcb:INT16)
   (dst-y :initarg :dst-y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:CopyPlane
  (xcb:-request)
  ((~opcode :initform 63 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (src-drawable :initarg :src-drawable :type xcb:DRAWABLE)
   (dst-drawable :initarg :dst-drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (dst-x :initarg :dst-x :type xcb:INT16)
   (dst-y :initarg :dst-y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (bit-plane :initarg :bit-plane :type xcb:CARD32)))

(defconst xcb:CoordMode:Origin 0)
(defconst xcb:CoordMode:Previous 1)

(defclass xcb:PolyPoint
  (xcb:-request)
  ((~opcode :initform 64 :type xcb:-u1)
   (coordinate-mode :initarg :coordinate-mode :type xcb:BYTE)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (points :initarg :points :type xcb:-ignore)
   (points~ :initform
	    '(name points type xcb:POINT size nil)
	    :type xcb:-list)))

(defclass xcb:PolyLine
  (xcb:-request)
  ((~opcode :initform 65 :type xcb:-u1)
   (coordinate-mode :initarg :coordinate-mode :type xcb:BYTE)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (points :initarg :points :type xcb:-ignore)
   (points~ :initform
	    '(name points type xcb:POINT size nil)
	    :type xcb:-list)))

(defclass xcb:SEGMENT
  (xcb:-struct)
  ((x1 :initarg :x1 :type xcb:INT16)
   (y1 :initarg :y1 :type xcb:INT16)
   (x2 :initarg :x2 :type xcb:INT16)
   (y2 :initarg :y2 :type xcb:INT16)))

(defclass xcb:PolySegment
  (xcb:-request)
  ((~opcode :initform 66 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (segments :initarg :segments :type xcb:-ignore)
   (segments~ :initform
	      '(name segments type xcb:SEGMENT size nil)
	      :type xcb:-list)))

(defclass xcb:PolyRectangle
  (xcb:-request)
  ((~opcode :initform 67 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (rectangles :initarg :rectangles :type xcb:-ignore)
   (rectangles~ :initform
		'(name rectangles type xcb:RECTANGLE size nil)
		:type xcb:-list)))

(defclass xcb:PolyArc
  (xcb:-request)
  ((~opcode :initform 68 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (arcs :initarg :arcs :type xcb:-ignore)
   (arcs~ :initform
	  '(name arcs type xcb:ARC size nil)
	  :type xcb:-list)))

(defconst xcb:PolyShape:Complex 0)
(defconst xcb:PolyShape:Nonconvex 1)
(defconst xcb:PolyShape:Convex 2)

(defclass xcb:FillPoly
  (xcb:-request)
  ((~opcode :initform 69 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (shape :initarg :shape :type xcb:CARD8)
   (coordinate-mode :initarg :coordinate-mode :type xcb:CARD8)
   (pad~1 :initform 2 :type xcb:-pad)
   (points :initarg :points :type xcb:-ignore)
   (points~ :initform
	    '(name points type xcb:POINT size nil)
	    :type xcb:-list)))

(defclass xcb:PolyFillRectangle
  (xcb:-request)
  ((~opcode :initform 70 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (rectangles :initarg :rectangles :type xcb:-ignore)
   (rectangles~ :initform
		'(name rectangles type xcb:RECTANGLE size nil)
		:type xcb:-list)))

(defclass xcb:PolyFillArc
  (xcb:-request)
  ((~opcode :initform 71 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (arcs :initarg :arcs :type xcb:-ignore)
   (arcs~ :initform
	  '(name arcs type xcb:ARC size nil)
	  :type xcb:-list)))

(defconst xcb:ImageFormat:XYBitmap 0)
(defconst xcb:ImageFormat:XYPixmap 1)
(defconst xcb:ImageFormat:ZPixmap 2)

(defclass xcb:PutImage
  (xcb:-request)
  ((~opcode :initform 72 :type xcb:-u1)
   (format :initarg :format :type xcb:CARD8)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (dst-x :initarg :dst-x :type xcb:INT16)
   (dst-y :initarg :dst-y :type xcb:INT16)
   (left-pad :initarg :left-pad :type xcb:CARD8)
   (depth :initarg :depth :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size nil)
	  :type xcb:-list)))

(defclass xcb:GetImage
  (xcb:-request)
  ((~opcode :initform 73 :type xcb:-u1)
   (format :initarg :format :type xcb:CARD8)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (plane-mask :initarg :plane-mask :type xcb:CARD32)))
(defclass xcb:GetImage~reply
  (xcb:-reply)
  ((depth :initarg :depth :type xcb:CARD8)
   (visual :initarg :visual :type xcb:VISUALID)
   (pad~0 :initform 20 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:PolyText8
  (xcb:-request)
  ((~opcode :initform 74 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (items :initarg :items :type xcb:-ignore)
   (items~ :initform
	   '(name items type xcb:BYTE size nil)
	   :type xcb:-list)))

(defclass xcb:PolyText16
  (xcb:-request)
  ((~opcode :initform 75 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (items :initarg :items :type xcb:-ignore)
   (items~ :initform
	   '(name items type xcb:BYTE size nil)
	   :type xcb:-list)))

(defclass xcb:ImageText8
  (xcb:-request)
  ((~opcode :initform 76 :type xcb:-u1)
   (string-len :initarg :string-len :type xcb:BYTE)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:char size
		   (xcb:-fieldref 'string-len))
	    :type xcb:-list)))

(defclass xcb:ImageText16
  (xcb:-request)
  ((~opcode :initform 77 :type xcb:-u1)
   (string-len :initarg :string-len :type xcb:BYTE)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:CHAR2B size
		   (xcb:-fieldref 'string-len))
	    :type xcb:-list)))

(defconst xcb:ColormapAlloc:None 0)
(defconst xcb:ColormapAlloc:All 1)

(defclass xcb:CreateColormap
  (xcb:-request)
  ((~opcode :initform 78 :type xcb:-u1)
   (alloc :initarg :alloc :type xcb:BYTE)
   (mid :initarg :mid :type xcb:COLORMAP)
   (window :initarg :window :type xcb:WINDOW)
   (visual :initarg :visual :type xcb:VISUALID)))

(defclass xcb:FreeColormap
  (xcb:-request)
  ((~opcode :initform 79 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)))

(defclass xcb:CopyColormapAndFree
  (xcb:-request)
  ((~opcode :initform 80 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (mid :initarg :mid :type xcb:COLORMAP)
   (src-cmap :initarg :src-cmap :type xcb:COLORMAP)))

(defclass xcb:InstallColormap
  (xcb:-request)
  ((~opcode :initform 81 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)))

(defclass xcb:UninstallColormap
  (xcb:-request)
  ((~opcode :initform 82 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)))

(defclass xcb:ListInstalledColormaps
  (xcb:-request)
  ((~opcode :initform 83 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:ListInstalledColormaps~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (cmaps-len :initarg :cmaps-len :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (cmaps :initarg :cmaps :type xcb:-ignore)
   (cmaps~ :initform
	   '(name cmaps type xcb:COLORMAP size
		  (xcb:-fieldref 'cmaps-len))
	   :type xcb:-list)))

(defclass xcb:AllocColor
  (xcb:-request)
  ((~opcode :initform 84 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (red :initarg :red :type xcb:CARD16)
   (green :initarg :green :type xcb:CARD16)
   (blue :initarg :blue :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)))
(defclass xcb:AllocColor~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (red :initarg :red :type xcb:CARD16)
   (green :initarg :green :type xcb:CARD16)
   (blue :initarg :blue :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (pixel :initarg :pixel :type xcb:CARD32)))

(defclass xcb:AllocNamedColor
  (xcb:-request)
  ((~opcode :initform 85 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))
(defclass xcb:AllocNamedColor~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pixel :initarg :pixel :type xcb:CARD32)
   (exact-red :initarg :exact-red :type xcb:CARD16)
   (exact-green :initarg :exact-green :type xcb:CARD16)
   (exact-blue :initarg :exact-blue :type xcb:CARD16)
   (visual-red :initarg :visual-red :type xcb:CARD16)
   (visual-green :initarg :visual-green :type xcb:CARD16)
   (visual-blue :initarg :visual-blue :type xcb:CARD16)))

(defclass xcb:AllocColorCells
  (xcb:-request)
  ((~opcode :initform 86 :type xcb:-u1)
   (contiguous :initarg :contiguous :type xcb:BOOL)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (colors :initarg :colors :type xcb:CARD16)
   (planes :initarg :planes :type xcb:CARD16)))
(defclass xcb:AllocColorCells~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pixels-len :initarg :pixels-len :type xcb:CARD16)
   (masks-len :initarg :masks-len :type xcb:CARD16)
   (pad~1 :initform 20 :type xcb:-pad)
   (pixels :initarg :pixels :type xcb:-ignore)
   (pixels~ :initform
	    '(name pixels type xcb:CARD32 size
		   (xcb:-fieldref 'pixels-len))
	    :type xcb:-list)
   (masks :initarg :masks :type xcb:-ignore)
   (masks~ :initform
	   '(name masks type xcb:CARD32 size
		  (xcb:-fieldref 'masks-len))
	   :type xcb:-list)))

(defclass xcb:AllocColorPlanes
  (xcb:-request)
  ((~opcode :initform 87 :type xcb:-u1)
   (contiguous :initarg :contiguous :type xcb:BOOL)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (colors :initarg :colors :type xcb:CARD16)
   (reds :initarg :reds :type xcb:CARD16)
   (greens :initarg :greens :type xcb:CARD16)
   (blues :initarg :blues :type xcb:CARD16)))
(defclass xcb:AllocColorPlanes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pixels-len :initarg :pixels-len :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (red-mask :initarg :red-mask :type xcb:CARD32)
   (green-mask :initarg :green-mask :type xcb:CARD32)
   (blue-mask :initarg :blue-mask :type xcb:CARD32)
   (pad~2 :initform 8 :type xcb:-pad)
   (pixels :initarg :pixels :type xcb:-ignore)
   (pixels~ :initform
	    '(name pixels type xcb:CARD32 size
		   (xcb:-fieldref 'pixels-len))
	    :type xcb:-list)))

(defclass xcb:FreeColors
  (xcb:-request)
  ((~opcode :initform 88 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (plane-mask :initarg :plane-mask :type xcb:CARD32)
   (pixels :initarg :pixels :type xcb:-ignore)
   (pixels~ :initform
	    '(name pixels type xcb:CARD32 size nil)
	    :type xcb:-list)))

(defconst xcb:ColorFlag:Red 1)
(defconst xcb:ColorFlag:Green 2)
(defconst xcb:ColorFlag:Blue 4)

(defclass xcb:COLORITEM
  (xcb:-struct)
  ((pixel :initarg :pixel :type xcb:CARD32)
   (red :initarg :red :type xcb:CARD16)
   (green :initarg :green :type xcb:CARD16)
   (blue :initarg :blue :type xcb:CARD16)
   (flags :initarg :flags :type xcb:BYTE)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:StoreColors
  (xcb:-request)
  ((~opcode :initform 89 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (items :initarg :items :type xcb:-ignore)
   (items~ :initform
	   '(name items type xcb:COLORITEM size nil)
	   :type xcb:-list)))

(defclass xcb:StoreNamedColor
  (xcb:-request)
  ((~opcode :initform 90 :type xcb:-u1)
   (flags :initarg :flags :type xcb:CARD8)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (pixel :initarg :pixel :type xcb:CARD32)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:RGB
  (xcb:-struct)
  ((red :initarg :red :type xcb:CARD16)
   (green :initarg :green :type xcb:CARD16)
   (blue :initarg :blue :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:QueryColors
  (xcb:-request)
  ((~opcode :initform 91 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (pixels :initarg :pixels :type xcb:-ignore)
   (pixels~ :initform
	    '(name pixels type xcb:CARD32 size nil)
	    :type xcb:-list)))
(defclass xcb:QueryColors~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (colors-len :initarg :colors-len :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (colors :initarg :colors :type xcb:-ignore)
   (colors~ :initform
	    '(name colors type xcb:RGB size
		   (xcb:-fieldref 'colors-len))
	    :type xcb:-list)))

(defclass xcb:LookupColor
  (xcb:-request)
  ((~opcode :initform 92 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cmap :initarg :cmap :type xcb:COLORMAP)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))
(defclass xcb:LookupColor~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (exact-red :initarg :exact-red :type xcb:CARD16)
   (exact-green :initarg :exact-green :type xcb:CARD16)
   (exact-blue :initarg :exact-blue :type xcb:CARD16)
   (visual-red :initarg :visual-red :type xcb:CARD16)
   (visual-green :initarg :visual-green :type xcb:CARD16)
   (visual-blue :initarg :visual-blue :type xcb:CARD16)))

(defconst xcb:Pixmap:None 0)

(defclass xcb:CreateCursor
  (xcb:-request)
  ((~opcode :initform 93 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cid :initarg :cid :type xcb:CURSOR)
   (source :initarg :source :type xcb:PIXMAP)
   (mask :initarg :mask :type xcb:PIXMAP)
   (fore-red :initarg :fore-red :type xcb:CARD16)
   (fore-green :initarg :fore-green :type xcb:CARD16)
   (fore-blue :initarg :fore-blue :type xcb:CARD16)
   (back-red :initarg :back-red :type xcb:CARD16)
   (back-green :initarg :back-green :type xcb:CARD16)
   (back-blue :initarg :back-blue :type xcb:CARD16)
   (x :initarg :x :type xcb:CARD16)
   (y :initarg :y :type xcb:CARD16)))

(defconst xcb:Font:None 0)

(defclass xcb:CreateGlyphCursor
  (xcb:-request)
  ((~opcode :initform 94 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cid :initarg :cid :type xcb:CURSOR)
   (source-font :initarg :source-font :type xcb:FONT)
   (mask-font :initarg :mask-font :type xcb:FONT)
   (source-char :initarg :source-char :type xcb:CARD16)
   (mask-char :initarg :mask-char :type xcb:CARD16)
   (fore-red :initarg :fore-red :type xcb:CARD16)
   (fore-green :initarg :fore-green :type xcb:CARD16)
   (fore-blue :initarg :fore-blue :type xcb:CARD16)
   (back-red :initarg :back-red :type xcb:CARD16)
   (back-green :initarg :back-green :type xcb:CARD16)
   (back-blue :initarg :back-blue :type xcb:CARD16)))

(defclass xcb:FreeCursor
  (xcb:-request)
  ((~opcode :initform 95 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cursor :initarg :cursor :type xcb:CURSOR)))

(defclass xcb:RecolorCursor
  (xcb:-request)
  ((~opcode :initform 96 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (fore-red :initarg :fore-red :type xcb:CARD16)
   (fore-green :initarg :fore-green :type xcb:CARD16)
   (fore-blue :initarg :fore-blue :type xcb:CARD16)
   (back-red :initarg :back-red :type xcb:CARD16)
   (back-green :initarg :back-green :type xcb:CARD16)
   (back-blue :initarg :back-blue :type xcb:CARD16)))

(defconst xcb:QueryShapeOf:LargestCursor 0)
(defconst xcb:QueryShapeOf:FastestTile 1)
(defconst xcb:QueryShapeOf:FastestStipple 2)

(defclass xcb:QueryBestSize
  (xcb:-request)
  ((~opcode :initform 97 :type xcb:-u1)
   (class :initarg :class :type xcb:CARD8)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))
(defclass xcb:QueryBestSize~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:QueryExtension
  (xcb:-request)
  ((~opcode :initform 98 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))
(defclass xcb:QueryExtension~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (present :initarg :present :type xcb:BOOL)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)
   (first-event :initarg :first-event :type xcb:CARD8)
   (first-error :initarg :first-error :type xcb:CARD8)))

(defclass xcb:ListExtensions
  (xcb:-request)
  ((~opcode :initform 99 :type xcb:-u1)))
(defclass xcb:ListExtensions~reply
  (xcb:-reply)
  ((names-len :initarg :names-len :type xcb:CARD8)
   (pad~0 :initform 24 :type xcb:-pad)
   (names :initarg :names :type xcb:-ignore)
   (names~ :initform
	   '(name names type xcb:STR size
		  (xcb:-fieldref 'names-len))
	   :type xcb:-list)))

(defclass xcb:ChangeKeyboardMapping
  (xcb:-request)
  ((~opcode :initform 100 :type xcb:-u1)
   (keycode-count :initarg :keycode-count :type xcb:CARD8)
   (first-keycode :initarg :first-keycode :type xcb:KEYCODE)
   (keysyms-per-keycode :initarg :keysyms-per-keycode :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (*
		     (xcb:-fieldref 'keycode-count)
		     (xcb:-fieldref 'keysyms-per-keycode)))
	     :type xcb:-list)))

(defclass xcb:GetKeyboardMapping
  (xcb:-request)
  ((~opcode :initform 101 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (first-keycode :initarg :first-keycode :type xcb:KEYCODE)
   (count :initarg :count :type xcb:CARD8)))
(defclass xcb:GetKeyboardMapping~reply
  (xcb:-reply)
  ((keysyms-per-keycode :initarg :keysyms-per-keycode :type xcb:BYTE)
   (pad~0 :initform 24 :type xcb:-pad)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (xcb:-fieldref 'length))
	     :type xcb:-list)))

(defconst xcb:KB:KeyClickPercent 1)
(defconst xcb:KB:BellPercent 2)
(defconst xcb:KB:BellPitch 4)
(defconst xcb:KB:BellDuration 8)
(defconst xcb:KB:Led 16)
(defconst xcb:KB:LedMode 32)
(defconst xcb:KB:Key 64)
(defconst xcb:KB:AutoRepeatMode 128)

(defconst xcb:LedMode:Off 0)
(defconst xcb:LedMode:On 1)

(defconst xcb:AutoRepeatMode:Off 0)
(defconst xcb:AutoRepeatMode:On 1)
(defconst xcb:AutoRepeatMode:Default 2)

(defclass xcb:ChangeKeyboardControl
  (xcb:-request)
  ((~opcode :initform 102 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:KB:KeyClickPercent key-click-percent)
		  (xcb:KB:BellPercent bell-percent)
		  (xcb:KB:BellPitch bell-pitch)
		  (xcb:KB:BellDuration bell-duration)
		  (xcb:KB:Led led)
		  (xcb:KB:LedMode led-mode)
		  (xcb:KB:Key key)
		  (xcb:KB:AutoRepeatMode auto-repeat-mode)))
	       :type xcb:-switch)
   (key-click-percent :initarg :key-click-percent :type xcb:INT32)
   (bell-percent :initarg :bell-percent :type xcb:INT32)
   (bell-pitch :initarg :bell-pitch :type xcb:INT32)
   (bell-duration :initarg :bell-duration :type xcb:INT32)
   (led :initarg :led :type xcb:CARD32)
   (led-mode :initarg :led-mode :type xcb:CARD32)
   (key :initarg :key :type xcb:KEYCODE32)
   (auto-repeat-mode :initarg :auto-repeat-mode :type xcb:CARD32)))

(defclass xcb:GetKeyboardControl
  (xcb:-request)
  ((~opcode :initform 103 :type xcb:-u1)))
(defclass xcb:GetKeyboardControl~reply
  (xcb:-reply)
  ((global-auto-repeat :initarg :global-auto-repeat :type xcb:BYTE)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (key-click-percent :initarg :key-click-percent :type xcb:CARD8)
   (bell-percent :initarg :bell-percent :type xcb:CARD8)
   (bell-pitch :initarg :bell-pitch :type xcb:CARD16)
   (bell-duration :initarg :bell-duration :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (auto-repeats :initarg :auto-repeats :type xcb:-ignore)
   (auto-repeats~ :initform
		  '(name auto-repeats type xcb:CARD8 size 32)
		  :type xcb:-list)))

(defclass xcb:Bell
  (xcb:-request)
  ((~opcode :initform 104 :type xcb:-u1)
   (percent :initarg :percent :type xcb:INT8)))

(defclass xcb:ChangePointerControl
  (xcb:-request)
  ((~opcode :initform 105 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (acceleration-numerator :initarg :acceleration-numerator :type xcb:INT16)
   (acceleration-denominator :initarg :acceleration-denominator :type xcb:INT16)
   (threshold :initarg :threshold :type xcb:INT16)
   (do-acceleration :initarg :do-acceleration :type xcb:BOOL)
   (do-threshold :initarg :do-threshold :type xcb:BOOL)))

(defclass xcb:GetPointerControl
  (xcb:-request)
  ((~opcode :initform 106 :type xcb:-u1)))
(defclass xcb:GetPointerControl~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (acceleration-numerator :initarg :acceleration-numerator :type xcb:CARD16)
   (acceleration-denominator :initarg :acceleration-denominator :type xcb:CARD16)
   (threshold :initarg :threshold :type xcb:CARD16)
   (pad~1 :initform 18 :type xcb:-pad)))

(defconst xcb:Blanking:NotPreferred 0)
(defconst xcb:Blanking:Preferred 1)
(defconst xcb:Blanking:Default 2)

(defconst xcb:Exposures:NotAllowed 0)
(defconst xcb:Exposures:Allowed 1)
(defconst xcb:Exposures:Default 2)

(defclass xcb:SetScreenSaver
  (xcb:-request)
  ((~opcode :initform 107 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (timeout :initarg :timeout :type xcb:INT16)
   (interval :initarg :interval :type xcb:INT16)
   (prefer-blanking :initarg :prefer-blanking :type xcb:CARD8)
   (allow-exposures :initarg :allow-exposures :type xcb:CARD8)))

(defclass xcb:GetScreenSaver
  (xcb:-request)
  ((~opcode :initform 108 :type xcb:-u1)))
(defclass xcb:GetScreenSaver~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (timeout :initarg :timeout :type xcb:CARD16)
   (interval :initarg :interval :type xcb:CARD16)
   (prefer-blanking :initarg :prefer-blanking :type xcb:BYTE)
   (allow-exposures :initarg :allow-exposures :type xcb:BYTE)
   (pad~1 :initform 18 :type xcb:-pad)))

(defconst xcb:HostMode:Insert 0)
(defconst xcb:HostMode:Delete 1)

(defconst xcb:Family:Internet 0)
(defconst xcb:Family:DECnet 1)
(defconst xcb:Family:Chaos 2)
(defconst xcb:Family:ServerInterpreted 5)
(defconst xcb:Family:Internet6 6)

(defclass xcb:ChangeHosts
  (xcb:-request)
  ((~opcode :initform 109 :type xcb:-u1)
   (mode :initarg :mode :type xcb:CARD8)
   (family :initarg :family :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (address-len :initarg :address-len :type xcb:CARD16)
   (address :initarg :address :type xcb:-ignore)
   (address~ :initform
	     '(name address type xcb:BYTE size
		    (xcb:-fieldref 'address-len))
	     :type xcb:-list)))

(defclass xcb:HOST
  (xcb:-struct)
  ((family :initarg :family :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (address-len :initarg :address-len :type xcb:CARD16)
   (address :initarg :address :type xcb:-ignore)
   (address~ :initform
	     '(name address type xcb:BYTE size
		    (xcb:-fieldref 'address-len))
	     :type xcb:-list)))

(defclass xcb:ListHosts
  (xcb:-request)
  ((~opcode :initform 110 :type xcb:-u1)))
(defclass xcb:ListHosts~reply
  (xcb:-reply)
  ((mode :initarg :mode :type xcb:BYTE)
   (hosts-len :initarg :hosts-len :type xcb:CARD16)
   (pad~0 :initform 22 :type xcb:-pad)
   (hosts :initarg :hosts :type xcb:-ignore)
   (hosts~ :initform
	   '(name hosts type xcb:HOST size
		  (xcb:-fieldref 'hosts-len))
	   :type xcb:-list)))

(defconst xcb:AccessControl:Disable 0)
(defconst xcb:AccessControl:Enable 1)

(defclass xcb:SetAccessControl
  (xcb:-request)
  ((~opcode :initform 111 :type xcb:-u1)
   (mode :initarg :mode :type xcb:CARD8)))

(defconst xcb:CloseDown:DestroyAll 0)
(defconst xcb:CloseDown:RetainPermanent 1)
(defconst xcb:CloseDown:RetainTemporary 2)

(defclass xcb:SetCloseDownMode
  (xcb:-request)
  ((~opcode :initform 112 :type xcb:-u1)
   (mode :initarg :mode :type xcb:CARD8)))

(defconst xcb:Kill:AllTemporary 0)

(defclass xcb:KillClient
  (xcb:-request)
  ((~opcode :initform 113 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (resource :initarg :resource :type xcb:CARD32)))

(defclass xcb:RotateProperties
  (xcb:-request)
  ((~opcode :initform 114 :type xcb:-u1)
   (pad~0 :initform 1 :type xcb:-pad)
   (window :initarg :window :type xcb:WINDOW)
   (atoms-len :initarg :atoms-len :type xcb:CARD16)
   (delta :initarg :delta :type xcb:INT16)
   (atoms :initarg :atoms :type xcb:-ignore)
   (atoms~ :initform
	   '(name atoms type xcb:ATOM size
		  (xcb:-fieldref 'atoms-len))
	   :type xcb:-list)))

(defconst xcb:ScreenSaver:Reset 0)
(defconst xcb:ScreenSaver:Active 1)

(defclass xcb:ForceScreenSaver
  (xcb:-request)
  ((~opcode :initform 115 :type xcb:-u1)
   (mode :initarg :mode :type xcb:CARD8)))

(defconst xcb:MappingStatus:Success 0)
(defconst xcb:MappingStatus:Busy 1)
(defconst xcb:MappingStatus:Failure 2)

(defclass xcb:SetPointerMapping
  (xcb:-request)
  ((~opcode :initform 116 :type xcb:-u1)
   (map-len :initarg :map-len :type xcb:CARD8)
   (map :initarg :map :type xcb:-ignore)
   (map~ :initform
	 '(name map type xcb:CARD8 size
		(xcb:-fieldref 'map-len))
	 :type xcb:-list)))
(defclass xcb:SetPointerMapping~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:BYTE)))

(defclass xcb:GetPointerMapping
  (xcb:-request)
  ((~opcode :initform 117 :type xcb:-u1)))
(defclass xcb:GetPointerMapping~reply
  (xcb:-reply)
  ((map-len :initarg :map-len :type xcb:CARD8)
   (pad~0 :initform 24 :type xcb:-pad)
   (map :initarg :map :type xcb:-ignore)
   (map~ :initform
	 '(name map type xcb:CARD8 size
		(xcb:-fieldref 'map-len))
	 :type xcb:-list)))

(defconst xcb:MapIndex:Shift 0)
(defconst xcb:MapIndex:Lock 1)
(defconst xcb:MapIndex:Control 2)
(defconst xcb:MapIndex:1 3)
(defconst xcb:MapIndex:2 4)
(defconst xcb:MapIndex:3 5)
(defconst xcb:MapIndex:4 6)
(defconst xcb:MapIndex:5 7)

(defclass xcb:SetModifierMapping
  (xcb:-request)
  ((~opcode :initform 118 :type xcb:-u1)
   (keycodes-per-modifier :initarg :keycodes-per-modifier :type xcb:CARD8)
   (keycodes :initarg :keycodes :type xcb:-ignore)
   (keycodes~ :initform
	      '(name keycodes type xcb:KEYCODE size
		     (*
		      (xcb:-fieldref 'keycodes-per-modifier)
		      8))
	      :type xcb:-list)))
(defclass xcb:SetModifierMapping~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:BYTE)))

(defclass xcb:GetModifierMapping
  (xcb:-request)
  ((~opcode :initform 119 :type xcb:-u1)))
(defclass xcb:GetModifierMapping~reply
  (xcb:-reply)
  ((keycodes-per-modifier :initarg :keycodes-per-modifier :type xcb:CARD8)
   (pad~0 :initform 24 :type xcb:-pad)
   (keycodes :initarg :keycodes :type xcb:-ignore)
   (keycodes~ :initform
	      '(name keycodes type xcb:KEYCODE size
		     (*
		      (xcb:-fieldref 'keycodes-per-modifier)
		      8))
	      :type xcb:-list)))

(defclass xcb:NoOperation
  (xcb:-request)
  ((~opcode :initform 127 :type xcb:-u1)))

(defconst xcb:error-number-class-alist
  '((1 . xcb:Request)
    (2 . xcb:Value)
    (3 . xcb:Window)
    (4 . xcb:Pixmap)
    (5 . xcb:Atom)
    (6 . xcb:Cursor)
    (7 . xcb:Font)
    (8 . xcb:Match)
    (9 . xcb:Drawable)
    (10 . xcb:Access)
    (11 . xcb:Alloc)
    (12 . xcb:Colormap)
    (13 . xcb:GContext)
    (14 . xcb:IDChoice)
    (15 . xcb:Name)
    (16 . xcb:Length)
    (17 . xcb:Implementation))
  "(error-number . error-class) alist")

(defconst xcb:event-number-class-alist
  '((2 . xcb:KeyPress)
    (3 . xcb:KeyRelease)
    (4 . xcb:ButtonPress)
    (5 . xcb:ButtonRelease)
    (6 . xcb:MotionNotify)
    (7 . xcb:EnterNotify)
    (8 . xcb:LeaveNotify)
    (9 . xcb:FocusIn)
    (10 . xcb:FocusOut)
    (11 . xcb:KeymapNotify)
    (12 . xcb:Expose)
    (13 . xcb:GraphicsExposure)
    (14 . xcb:NoExposure)
    (15 . xcb:VisibilityNotify)
    (16 . xcb:CreateNotify)
    (17 . xcb:DestroyNotify)
    (18 . xcb:UnmapNotify)
    (19 . xcb:MapNotify)
    (20 . xcb:MapRequest)
    (21 . xcb:ReparentNotify)
    (22 . xcb:ConfigureNotify)
    (23 . xcb:ConfigureRequest)
    (24 . xcb:GravityNotify)
    (25 . xcb:ResizeRequest)
    (26 . xcb:CirculateNotify)
    (27 . xcb:CirculateRequest)
    (28 . xcb:PropertyNotify)
    (29 . xcb:SelectionClear)
    (30 . xcb:SelectionRequest)
    (31 . xcb:SelectionNotify)
    (32 . xcb:ColormapNotify)
    (33 . xcb:ClientMessage)
    (34 . xcb:MappingNotify)
    (35 . xcb:GeGeneric))
  "(event-number . event-class) alist")



(provide 'xcb-xproto)
