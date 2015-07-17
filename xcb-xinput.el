;;; -*- lexical-binding: t -*-
;; This file was generated from `xinput.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:xinput:-extension-xname "XInputExtension")
(defconst xcb:xinput:-extension-name "Input")
(defconst xcb:xinput:-major-version 2)
(defconst xcb:xinput:-minor-version 3)

(require 'xcb-xfixes)

(require 'xcb-xproto)

(xcb:deftypealias 'xcb:xinput:EventClass 'xcb:CARD32)

(xcb:deftypealias 'xcb:xinput:KeyCode 'xcb:CARD8)

(xcb:deftypealias 'xcb:xinput:DeviceId 'xcb:CARD16)

(xcb:deftypealias 'xcb:xinput:FP1616 'xcb:INT32)

(defclass xcb:xinput:FP3232
  (xcb:-struct)
  ((integral :initarg :integral :type xcb:INT32)
   (frac :initarg :frac :type xcb:CARD32)))

(defclass xcb:xinput:GetExtensionVersion
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))
(defclass xcb:xinput:GetExtensionVersion~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (server-major :initarg :server-major :type xcb:CARD16)
   (server-minor :initarg :server-minor :type xcb:CARD16)
   (present :initarg :present :type xcb:BOOL)
   (pad~0 :initform 19 :type xcb:-pad)))

(defconst xcb:xinput:DeviceUse:IsXPointer 0)
(defconst xcb:xinput:DeviceUse:IsXKeyboard 1)
(defconst xcb:xinput:DeviceUse:IsXExtensionDevice 2)
(defconst xcb:xinput:DeviceUse:IsXExtensionKeyboard 3)
(defconst xcb:xinput:DeviceUse:IsXExtensionPointer 4)

(defconst xcb:xinput:InputClass:Key 0)
(defconst xcb:xinput:InputClass:Button 1)
(defconst xcb:xinput:InputClass:Valuator 2)
(defconst xcb:xinput:InputClass:Feedback 3)
(defconst xcb:xinput:InputClass:Proximity 4)
(defconst xcb:xinput:InputClass:Focus 5)
(defconst xcb:xinput:InputClass:Other 6)

(defconst xcb:xinput:ValuatorMode:Relative 0)
(defconst xcb:xinput:ValuatorMode:Absolute 1)

(defclass xcb:xinput:DeviceInfo
  (xcb:-struct)
  ((device-type :initarg :device-type :type xcb:ATOM)
   (device-id :initarg :device-id :type xcb:CARD8)
   (num-class-info :initarg :num-class-info :type xcb:CARD8)
   (device-use :initarg :device-use :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:xinput:KeyInfo
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (min-keycode :initarg :min-keycode :type xcb:xinput:KeyCode)
   (max-keycode :initarg :max-keycode :type xcb:xinput:KeyCode)
   (num-keys :initarg :num-keys :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:ButtonInfo
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (num-buttons :initarg :num-buttons :type xcb:CARD16)))

(defclass xcb:xinput:AxisInfo
  (xcb:-struct)
  ((resolution :initarg :resolution :type xcb:CARD32)
   (minimum :initarg :minimum :type xcb:INT32)
   (maximum :initarg :maximum :type xcb:INT32)))

(defclass xcb:xinput:ValuatorInfo
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (axes-len :initarg :axes-len :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (motion-size :initarg :motion-size :type xcb:CARD32)
   (axes :initarg :axes :type xcb:-ignore)
   (axes~ :initform
	  '(name axes type xcb:xinput:AxisInfo size
		 (xcb:-fieldref 'axes-len))
	  :type xcb:-list)))

(defclass xcb:xinput:InputInfo
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (info :initform
	 '(expression
	   (xcb:-fieldref 'class-id)
	   cases
	   (((xcb:xinput:InputClass:Key)
	     min-keycode max-keycode num-keys pad~10)
	    ((xcb:xinput:InputClass:Button)
	     num-buttons)
	    ((xcb:xinput:InputClass:Valuator)
	     axes-len mode motion-size axes)))
	 :type xcb:-switch)
   (min-keycode :initarg :min-keycode :type xcb:xinput:KeyCode)
   (max-keycode :initarg :max-keycode :type xcb:xinput:KeyCode)
   (num-keys :initarg :num-keys :type xcb:CARD16)
   (pad~10 :initform 2 :type xcb:-pad)
   (num-buttons :initarg :num-buttons :type xcb:CARD16)
   (axes-len :initarg :axes-len :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (motion-size :initarg :motion-size :type xcb:CARD32)
   (axes :initarg :axes :type xcb:-ignore)
   (axes~ :initform
	  '(name axes type xcb:xinput:AxisInfo size
		 (xcb:-fieldref 'axes-len))
	  :type xcb:-list)))

(defclass xcb:xinput:DeviceName
  (xcb:-struct)
  ((len :initarg :len :type xcb:CARD8)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:char size
		   (xcb:-fieldref 'len))
	    :type xcb:-list)))

(defclass xcb:xinput:ListInputDevices
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)))
(defclass xcb:xinput:ListInputDevices~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (devices-len :initarg :devices-len :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (devices :initarg :devices :type xcb:-ignore)
   (devices~ :initform
	     '(name devices type xcb:xinput:DeviceInfo size
		    (xcb:-fieldref 'devices-len))
	     :type xcb:-list)
   (infos :initarg :infos :type xcb:-ignore)
   (infos~ :initform
	   '(name infos type xcb:xinput:InputInfo size
		  (apply '+
			 (mapcar
			  (lambda
			    (i)
			    (eval
			     '(xcb:-fieldref 'num-class-info)
			     (list
			      (nconc
			       '(obj)
			       i))))
			  (slot-value obj 'devices))))
	   :type xcb:-list)
   (names :initarg :names :type xcb:-ignore)
   (names~ :initform
	   '(name names type xcb:STR size
		  (xcb:-fieldref 'devices-len))
	   :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)))

(defclass xcb:xinput:InputClassInfo
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (event-type-base :initarg :event-type-base :type xcb:CARD8)))

(defclass xcb:xinput:OpenDevice
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:OpenDevice~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-classes :initarg :num-classes :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (class-info :initarg :class-info :type xcb:-ignore)
   (class-info~ :initform
		'(name class-info type xcb:xinput:InputClassInfo size
		       (xcb:-fieldref 'num-classes))
		:type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)))

(defclass xcb:xinput:CloseDevice
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:SetDeviceMode
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xinput:SetDeviceMode~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:SelectExtensionEvent
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:GetSelectedExtensionEvents
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xinput:GetSelectedExtensionEvents~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-this-classes :initarg :num-this-classes :type xcb:CARD16)
   (num-all-classes :initarg :num-all-classes :type xcb:CARD16)
   (pad~0 :initform 20 :type xcb:-pad)
   (this-classes :initarg :this-classes :type xcb:-ignore)
   (this-classes~ :initform
		  '(name this-classes type xcb:xinput:EventClass size
			 (xcb:-fieldref 'num-this-classes))
		  :type xcb:-list)
   (all-classes :initarg :all-classes :type xcb:-ignore)
   (all-classes~ :initform
		 '(name all-classes type xcb:xinput:EventClass size
			(xcb:-fieldref 'num-all-classes))
		 :type xcb:-list)))

(defconst xcb:xinput:PropagateMode:AddToList 0)
(defconst xcb:xinput:PropagateMode:DeleteFromList 1)

(defclass xcb:xinput:ChangeDeviceDontPropagateList
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:GetDeviceDontPropagateList
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xinput:GetDeviceDontPropagateList~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (pad~0 :initform 22 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:DeviceTimeCoord
  (xcb:-struct)
  ((time :initarg :time :type xcb:TIMESTAMP)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:INT32 size
		       (xcb:-paramref 'num-axes))
		:type xcb:-list)))

(defclass xcb:xinput:GetDeviceMotionEvents
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (start :initarg :start :type xcb:TIMESTAMP)
   (stop :initarg :stop :type xcb:TIMESTAMP)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceMotionEvents~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-events :initarg :num-events :type xcb:CARD32)
   (num-axes :initarg :num-axes :type xcb:CARD8)
   (device-mode :initarg :device-mode :type xcb:CARD8)
   (pad~0 :initform 18 :type xcb:-pad)
   (events :initarg :events :type xcb:-ignore)
   (events~ :initform
	    '(name events type xcb:xinput:DeviceTimeCoord size
		   (xcb:-fieldref 'num-events))
	    :type xcb:-list)))

(defclass xcb:xinput:ChangeKeyboardDevice
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:ChangeKeyboardDevice~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:ChangePointerDevice
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (x-axis :initarg :x-axis :type xcb:CARD8)
   (y-axis :initarg :y-axis :type xcb:CARD8)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))
(defclass xcb:xinput:ChangePointerDevice~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:GrabDevice
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (this-device-mode :initarg :this-device-mode :type xcb:CARD8)
   (other-device-mode :initarg :other-device-mode :type xcb:CARD8)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))
(defclass xcb:xinput:GrabDevice~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:UngrabDevice
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (time :initarg :time :type xcb:TIMESTAMP)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defconst xcb:xinput:ModifierDevice:UseXKeyboard 255)

(defclass xcb:xinput:GrabDeviceKey
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (modifier-device :initarg :modifier-device :type xcb:CARD8)
   (grabbed-device :initarg :grabbed-device :type xcb:CARD8)
   (key :initarg :key :type xcb:CARD8)
   (this-device-mode :initarg :this-device-mode :type xcb:CARD8)
   (other-device-mode :initarg :other-device-mode :type xcb:CARD8)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:UngrabDeviceKey
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (grabWindow :initarg :grabWindow :type xcb:WINDOW)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (modifier-device :initarg :modifier-device :type xcb:CARD8)
   (key :initarg :key :type xcb:CARD8)
   (grabbed-device :initarg :grabbed-device :type xcb:CARD8)))

(defclass xcb:xinput:GrabDeviceButton
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (grabbed-device :initarg :grabbed-device :type xcb:CARD8)
   (modifier-device :initarg :modifier-device :type xcb:CARD8)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (this-device-mode :initarg :this-device-mode :type xcb:CARD8)
   (other-device-mode :initarg :other-device-mode :type xcb:CARD8)
   (button :initarg :button :type xcb:CARD8)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:UngrabDeviceButton
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (modifiers :initarg :modifiers :type xcb:CARD16)
   (modifier-device :initarg :modifier-device :type xcb:CARD8)
   (button :initarg :button :type xcb:CARD8)
   (grabbed-device :initarg :grabbed-device :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defconst xcb:xinput:DeviceInputMode:AsyncThisDevice 0)
(defconst xcb:xinput:DeviceInputMode:SyncThisDevice 1)
(defconst xcb:xinput:DeviceInputMode:ReplayThisDevice 2)
(defconst xcb:xinput:DeviceInputMode:AsyncOtherDevices 3)
(defconst xcb:xinput:DeviceInputMode:AsyncAll 4)
(defconst xcb:xinput:DeviceInputMode:SyncAll 5)

(defclass xcb:xinput:AllowDeviceEvents
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (time :initarg :time :type xcb:TIMESTAMP)
   (mode :initarg :mode :type xcb:CARD8)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:GetDeviceFocus
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceFocus~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (focus :initarg :focus :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)
   (revert-to :initarg :revert-to :type xcb:CARD8)
   (pad~0 :initform 15 :type xcb:-pad)))

(defclass xcb:xinput:SetDeviceFocus
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)
   (focus :initarg :focus :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)
   (revert-to :initarg :revert-to :type xcb:CARD8)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))

(defconst xcb:xinput:FeedbackClass:Keyboard 0)
(defconst xcb:xinput:FeedbackClass:Pointer 1)
(defconst xcb:xinput:FeedbackClass:String 2)
(defconst xcb:xinput:FeedbackClass:Integer 3)
(defconst xcb:xinput:FeedbackClass:Led 4)
(defconst xcb:xinput:FeedbackClass:Bell 5)

(defclass xcb:xinput:KbdFeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (pitch :initarg :pitch :type xcb:CARD16)
   (duration :initarg :duration :type xcb:CARD16)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (led-values :initarg :led-values :type xcb:CARD32)
   (global-auto-repeat :initarg :global-auto-repeat :type xcb:BOOL)
   (click :initarg :click :type xcb:CARD8)
   (percent :initarg :percent :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (auto-repeats :initarg :auto-repeats :type xcb:-ignore)
   (auto-repeats~ :initform
		  '(name auto-repeats type xcb:CARD8 size 32)
		  :type xcb:-list)))

(defclass xcb:xinput:PtrFeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (accel-num :initarg :accel-num :type xcb:CARD16)
   (accel-denom :initarg :accel-denom :type xcb:CARD16)
   (threshold :initarg :threshold :type xcb:CARD16)))

(defclass xcb:xinput:IntegerFeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (resolution :initarg :resolution :type xcb:CARD32)
   (min-value :initarg :min-value :type xcb:INT32)
   (max-value :initarg :max-value :type xcb:INT32)))

(defclass xcb:xinput:StringFeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (max-symbols :initarg :max-symbols :type xcb:CARD16)
   (num-keysyms :initarg :num-keysyms :type xcb:CARD16)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (xcb:-fieldref 'num-keysyms))
	     :type xcb:-list)))

(defclass xcb:xinput:BellFeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (percent :initarg :percent :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (pitch :initarg :pitch :type xcb:CARD16)
   (duration :initarg :duration :type xcb:CARD16)))

(defclass xcb:xinput:LedFeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (led-values :initarg :led-values :type xcb:CARD32)))

(defclass xcb:xinput:FeedbackState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'class-id)
	   cases
	   (((xcb:xinput:FeedbackClass:Keyboard)
	     pitch duration led-mask led-values global-auto-repeat click percent pad~10 auto-repeats)
	    ((xcb:xinput:FeedbackClass:Pointer)
	     pad~11 accel-num accel-denom threshold)
	    ((xcb:xinput:FeedbackClass:String)
	     max-symbols num-keysyms keysyms)
	    ((xcb:xinput:FeedbackClass:Integer)
	     resolution min-value max-value)
	    ((xcb:xinput:FeedbackClass:Led)
	     led-mask* led-values*)
	    ((xcb:xinput:FeedbackClass:Bell)
	     percent* pad~12 pitch* duration*)))
	 :type xcb:-switch)
   (pitch :initarg :pitch :type xcb:CARD16)
   (duration :initarg :duration :type xcb:CARD16)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (led-values :initarg :led-values :type xcb:CARD32)
   (global-auto-repeat :initarg :global-auto-repeat :type xcb:BOOL)
   (click :initarg :click :type xcb:CARD8)
   (percent :initarg :percent :type xcb:CARD8)
   (pad~10 :initform 1 :type xcb:-pad)
   (auto-repeats :initarg :auto-repeats :type xcb:-ignore)
   (auto-repeats~ :initform
		  '(name auto-repeats type xcb:CARD8 size 32)
		  :type xcb:-list)
   (pad~11 :initform 2 :type xcb:-pad)
   (accel-num :initarg :accel-num :type xcb:CARD16)
   (accel-denom :initarg :accel-denom :type xcb:CARD16)
   (threshold :initarg :threshold :type xcb:CARD16)
   (max-symbols :initarg :max-symbols :type xcb:CARD16)
   (num-keysyms :initarg :num-keysyms :type xcb:CARD16)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (xcb:-fieldref 'num-keysyms))
	     :type xcb:-list)
   (resolution :initarg :resolution :type xcb:CARD32)
   (min-value :initarg :min-value :type xcb:INT32)
   (max-value :initarg :max-value :type xcb:INT32)
   (led-mask* :initarg :led-mask* :type xcb:CARD32)
   (led-values* :initarg :led-values* :type xcb:CARD32)
   (percent* :initarg :percent* :type xcb:CARD8)
   (pad~12 :initform 3 :type xcb:-pad)
   (pitch* :initarg :pitch* :type xcb:CARD16)
   (duration* :initarg :duration* :type xcb:CARD16)))

(defclass xcb:xinput:GetFeedbackControl
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:GetFeedbackControl~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-feedbacks :initarg :num-feedbacks :type xcb:CARD16)
   (pad~0 :initform 22 :type xcb:-pad)
   (feedbacks :initarg :feedbacks :type xcb:-ignore)
   (feedbacks~ :initform
	       '(name feedbacks type xcb:xinput:FeedbackState size
		      (xcb:-fieldref 'num-feedbacks))
	       :type xcb:-list)))

(defclass xcb:xinput:KbdFeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (key :initarg :key :type xcb:xinput:KeyCode)
   (auto-repeat-mode :initarg :auto-repeat-mode :type xcb:CARD8)
   (key-click-percent :initarg :key-click-percent :type xcb:INT8)
   (bell-percent :initarg :bell-percent :type xcb:INT8)
   (bell-pitch :initarg :bell-pitch :type xcb:INT16)
   (bell-duration :initarg :bell-duration :type xcb:INT16)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (led-values :initarg :led-values :type xcb:CARD32)))

(defclass xcb:xinput:PtrFeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (num :initarg :num :type xcb:INT16)
   (denom :initarg :denom :type xcb:INT16)
   (threshold :initarg :threshold :type xcb:INT16)))

(defclass xcb:xinput:IntegerFeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (int-to-display :initarg :int-to-display :type xcb:INT32)))

(defclass xcb:xinput:StringFeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (num-keysyms :initarg :num-keysyms :type xcb:CARD16)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (xcb:-fieldref 'num-keysyms))
	     :type xcb:-list)))

(defclass xcb:xinput:BellFeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (percent :initarg :percent :type xcb:INT8)
   (pad~0 :initform 3 :type xcb:-pad)
   (pitch :initarg :pitch :type xcb:INT16)
   (duration :initarg :duration :type xcb:INT16)))

(defclass xcb:xinput:LedFeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (led-values :initarg :led-values :type xcb:CARD32)))

(defclass xcb:xinput:FeedbackCtl
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD16)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'class-id)
	   cases
	   (((xcb:xinput:FeedbackClass:Keyboard)
	     key auto-repeat-mode key-click-percent bell-percent bell-pitch bell-duration led-mask led-values)
	    ((xcb:xinput:FeedbackClass:Pointer)
	     pad~10 num denom threshold)
	    ((xcb:xinput:FeedbackClass:String)
	     pad~11 num-keysyms keysyms)
	    ((xcb:xinput:FeedbackClass:Integer)
	     int-to-display)
	    ((xcb:xinput:FeedbackClass:Led)
	     led-mask* led-values*)
	    ((xcb:xinput:FeedbackClass:Bell)
	     percent pad~12 pitch duration)))
	 :type xcb:-switch)
   (key :initarg :key :type xcb:xinput:KeyCode)
   (auto-repeat-mode :initarg :auto-repeat-mode :type xcb:CARD8)
   (key-click-percent :initarg :key-click-percent :type xcb:INT8)
   (bell-percent :initarg :bell-percent :type xcb:INT8)
   (bell-pitch :initarg :bell-pitch :type xcb:INT16)
   (bell-duration :initarg :bell-duration :type xcb:INT16)
   (led-mask :initarg :led-mask :type xcb:CARD32)
   (led-values :initarg :led-values :type xcb:CARD32)
   (pad~10 :initform 2 :type xcb:-pad)
   (num :initarg :num :type xcb:INT16)
   (denom :initarg :denom :type xcb:INT16)
   (threshold :initarg :threshold :type xcb:INT16)
   (pad~11 :initform 2 :type xcb:-pad)
   (num-keysyms :initarg :num-keysyms :type xcb:CARD16)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (xcb:-fieldref 'num-keysyms))
	     :type xcb:-list)
   (int-to-display :initarg :int-to-display :type xcb:INT32)
   (led-mask* :initarg :led-mask* :type xcb:CARD32)
   (led-values* :initarg :led-values* :type xcb:CARD32)
   (percent :initarg :percent :type xcb:INT8)
   (pad~12 :initform 3 :type xcb:-pad)
   (pitch :initarg :pitch :type xcb:INT16)
   (duration :initarg :duration :type xcb:INT16)))

(defconst xcb:xinput:ChangeFeedbackControlMask:KeyClickPercent 1)
(defconst xcb:xinput:ChangeFeedbackControlMask:Percent 2)
(defconst xcb:xinput:ChangeFeedbackControlMask:Pitch 4)
(defconst xcb:xinput:ChangeFeedbackControlMask:Duration 8)
(defconst xcb:xinput:ChangeFeedbackControlMask:Led 16)
(defconst xcb:xinput:ChangeFeedbackControlMask:LedMode 32)
(defconst xcb:xinput:ChangeFeedbackControlMask:Key 64)
(defconst xcb:xinput:ChangeFeedbackControlMask:AutoRepeatMode 128)
(defconst xcb:xinput:ChangeFeedbackControlMask:String 1)
(defconst xcb:xinput:ChangeFeedbackControlMask:Integer 1)
(defconst xcb:xinput:ChangeFeedbackControlMask:AccelNum 1)
(defconst xcb:xinput:ChangeFeedbackControlMask:AccelDenom 2)
(defconst xcb:xinput:ChangeFeedbackControlMask:Threshold 4)

(defclass xcb:xinput:ChangeFeedbackControl
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (mask :initarg :mask :type xcb:CARD32)
   (device-id :initarg :device-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (feedback :initarg :feedback :type xcb:xinput:FeedbackCtl)))

(defclass xcb:xinput:GetDeviceKeyMapping
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (first-keycode :initarg :first-keycode :type xcb:xinput:KeyCode)
   (count :initarg :count :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceKeyMapping~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (keysyms-per-keycode :initarg :keysyms-per-keycode :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (xcb:-fieldref 'length))
	     :type xcb:-list)))

(defclass xcb:xinput:ChangeDeviceKeyMapping
  (xcb:-request)
  ((~opcode :initform 25 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (first-keycode :initarg :first-keycode :type xcb:xinput:KeyCode)
   (keysyms-per-keycode :initarg :keysyms-per-keycode :type xcb:CARD8)
   (keycode-count :initarg :keycode-count :type xcb:CARD8)
   (keysyms :initarg :keysyms :type xcb:-ignore)
   (keysyms~ :initform
	     '(name keysyms type xcb:KEYSYM size
		    (*
		     (xcb:-fieldref 'keycode-count)
		     (xcb:-fieldref 'keysyms-per-keycode)))
	     :type xcb:-list)))

(defclass xcb:xinput:GetDeviceModifierMapping
  (xcb:-request)
  ((~opcode :initform 26 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceModifierMapping~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (keycodes-per-modifier :initarg :keycodes-per-modifier :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (keymaps :initarg :keymaps :type xcb:-ignore)
   (keymaps~ :initform
	     '(name keymaps type xcb:CARD8 size
		    (*
		     (xcb:-fieldref 'keycodes-per-modifier)
		     8))
	     :type xcb:-list)))

(defclass xcb:xinput:SetDeviceModifierMapping
  (xcb:-request)
  ((~opcode :initform 27 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (keycodes-per-modifier :initarg :keycodes-per-modifier :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (keymaps :initarg :keymaps :type xcb:-ignore)
   (keymaps~ :initform
	     '(name keymaps type xcb:CARD8 size
		    (*
		     (xcb:-fieldref 'keycodes-per-modifier)
		     8))
	     :type xcb:-list)))
(defclass xcb:xinput:SetDeviceModifierMapping~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:GetDeviceButtonMapping
  (xcb:-request)
  ((~opcode :initform 28 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceButtonMapping~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (map-size :initarg :map-size :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (map :initarg :map :type xcb:-ignore)
   (map~ :initform
	 '(name map type xcb:CARD8 size
		(xcb:-fieldref 'map-size))
	 :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)))

(defclass xcb:xinput:SetDeviceButtonMapping
  (xcb:-request)
  ((~opcode :initform 29 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (map-size :initarg :map-size :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (map :initarg :map :type xcb:-ignore)
   (map~ :initform
	 '(name map type xcb:CARD8 size
		(xcb:-fieldref 'map-size))
	 :type xcb:-list)))
(defclass xcb:xinput:SetDeviceButtonMapping~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:KeyState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (num-keys :initarg :num-keys :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD8 size 32)
	  :type xcb:-list)))

(defclass xcb:xinput:ButtonState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (num-buttons :initarg :num-buttons :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (buttons :initarg :buttons :type xcb:-ignore)
   (buttons~ :initform
	     '(name buttons type xcb:CARD8 size 32)
	     :type xcb:-list)))

(defconst xcb:xinput:ValuatorStateModeMask:DeviceModeAbsolute 1)
(defconst xcb:xinput:ValuatorStateModeMask:OutOfProximity 2)

(defclass xcb:xinput:ValuatorState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (valuators :initarg :valuators :type xcb:-ignore)
   (valuators~ :initform
	       '(name valuators type xcb:INT32 size
		      (xcb:-fieldref 'num-valuators))
	       :type xcb:-list)))

(defclass xcb:xinput:InputState
  (xcb:-struct)
  ((class-id :initarg :class-id :type xcb:CARD8)
   (len :initarg :len :type xcb:CARD8)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'class-id)
	   cases
	   (((xcb:xinput:InputClass:Key)
	     num-keys pad~10 keys)
	    ((xcb:xinput:InputClass:Button)
	     num-buttons pad~11 buttons)
	    ((xcb:xinput:InputClass:Valuator)
	     num-valuators mode valuators)))
	 :type xcb:-switch)
   (num-keys :initarg :num-keys :type xcb:CARD8)
   (pad~10 :initform 1 :type xcb:-pad)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD8 size 32)
	  :type xcb:-list)
   (num-buttons :initarg :num-buttons :type xcb:CARD8)
   (pad~11 :initform 1 :type xcb:-pad)
   (buttons :initarg :buttons :type xcb:-ignore)
   (buttons~ :initform
	     '(name buttons type xcb:CARD8 size 32)
	     :type xcb:-list)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (valuators :initarg :valuators :type xcb:-ignore)
   (valuators~ :initform
	       '(name valuators type xcb:INT32 size
		      (xcb:-fieldref 'num-valuators))
	       :type xcb:-list)))

(defclass xcb:xinput:QueryDeviceState
  (xcb:-request)
  ((~opcode :initform 30 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:QueryDeviceState~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-classes :initarg :num-classes :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:InputState size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:SendExtensionEvent
  (xcb:-request)
  ((~opcode :initform 31 :type xcb:-u1)
   (destination :initarg :destination :type xcb:WINDOW)
   (device-id :initarg :device-id :type xcb:CARD8)
   (propagate :initarg :propagate :type xcb:BOOL)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (num-events :initarg :num-events :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (events :initarg :events :type xcb:-ignore)
   (events~ :initform
	    '(name events type xcb:CARD8 size
		   (*
		    (xcb:-fieldref 'num-events)
		    32))
	    :type xcb:-list)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:EventClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:DeviceBell
  (xcb:-request)
  ((~opcode :initform 32 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (feedback-id :initarg :feedback-id :type xcb:CARD8)
   (feedback-class :initarg :feedback-class :type xcb:CARD8)
   (percent :initarg :percent :type xcb:INT8)))

(defclass xcb:xinput:SetDeviceValuators
  (xcb:-request)
  ((~opcode :initform 33 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (first-valuator :initarg :first-valuator :type xcb:CARD8)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (valuators :initarg :valuators :type xcb:-ignore)
   (valuators~ :initform
	       '(name valuators type xcb:INT32 size
		      (xcb:-fieldref 'num-valuators))
	       :type xcb:-list)))
(defclass xcb:xinput:SetDeviceValuators~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defconst xcb:xinput:DeviceControl:resolution 1)
(defconst xcb:xinput:DeviceControl:abs_calib 2)
(defconst xcb:xinput:DeviceControl:core 3)
(defconst xcb:xinput:DeviceControl:enable 4)
(defconst xcb:xinput:DeviceControl:abs_area 5)

(defclass xcb:xinput:DeviceResolutionState
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (num-valuators :initarg :num-valuators :type xcb:CARD32)
   (resolution-values :initarg :resolution-values :type xcb:-ignore)
   (resolution-values~ :initform
		       '(name resolution-values type xcb:CARD32 size
			      (xcb:-fieldref 'num-valuators))
		       :type xcb:-list)
   (resolution-min :initarg :resolution-min :type xcb:-ignore)
   (resolution-min~ :initform
		    '(name resolution-min type xcb:CARD32 size
			   (xcb:-fieldref 'num-valuators))
		    :type xcb:-list)
   (resolution-max :initarg :resolution-max :type xcb:-ignore)
   (resolution-max~ :initform
		    '(name resolution-max type xcb:CARD32 size
			   (xcb:-fieldref 'num-valuators))
		    :type xcb:-list)))

(defclass xcb:xinput:DeviceAbsCalibState
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (min-x :initarg :min-x :type xcb:INT32)
   (max-x :initarg :max-x :type xcb:INT32)
   (min-y :initarg :min-y :type xcb:INT32)
   (max-y :initarg :max-y :type xcb:INT32)
   (flip-x :initarg :flip-x :type xcb:CARD32)
   (flip-y :initarg :flip-y :type xcb:CARD32)
   (rotation :initarg :rotation :type xcb:CARD32)
   (button-threshold :initarg :button-threshold :type xcb:CARD32)))

(defclass xcb:xinput:DeviceAbsAreaState
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (offset-x :initarg :offset-x :type xcb:CARD32)
   (offset-y :initarg :offset-y :type xcb:CARD32)
   (width :initarg :width :type xcb:CARD32)
   (height :initarg :height :type xcb:CARD32)
   (screen :initarg :screen :type xcb:CARD32)
   (following :initarg :following :type xcb:CARD32)))

(defclass xcb:xinput:DeviceCoreState
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (status :initarg :status :type xcb:CARD8)
   (iscore :initarg :iscore :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:DeviceEnableState
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (enable :initarg :enable :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:DeviceState
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'control-id)
	   cases
	   (((xcb:xinput:DeviceControl:resolution)
	     num-valuators resolution-values resolution-min resolution-max)
	    ((xcb:xinput:DeviceControl:abs_calib)
	     min-x max-x min-y max-y flip-x flip-y rotation button-threshold)
	    ((xcb:xinput:DeviceControl:core)
	     status iscore pad~10)
	    ((xcb:xinput:DeviceControl:enable)
	     enable pad~11)
	    ((xcb:xinput:DeviceControl:abs_area)
	     offset-x offset-y width height screen following)))
	 :type xcb:-switch)
   (num-valuators :initarg :num-valuators :type xcb:CARD32)
   (resolution-values :initarg :resolution-values :type xcb:-ignore)
   (resolution-values~ :initform
		       '(name resolution-values type xcb:CARD32 size
			      (xcb:-fieldref 'num-valuators))
		       :type xcb:-list)
   (resolution-min :initarg :resolution-min :type xcb:-ignore)
   (resolution-min~ :initform
		    '(name resolution-min type xcb:CARD32 size
			   (xcb:-fieldref 'num-valuators))
		    :type xcb:-list)
   (resolution-max :initarg :resolution-max :type xcb:-ignore)
   (resolution-max~ :initform
		    '(name resolution-max type xcb:CARD32 size
			   (xcb:-fieldref 'num-valuators))
		    :type xcb:-list)
   (min-x :initarg :min-x :type xcb:INT32)
   (max-x :initarg :max-x :type xcb:INT32)
   (min-y :initarg :min-y :type xcb:INT32)
   (max-y :initarg :max-y :type xcb:INT32)
   (flip-x :initarg :flip-x :type xcb:CARD32)
   (flip-y :initarg :flip-y :type xcb:CARD32)
   (rotation :initarg :rotation :type xcb:CARD32)
   (button-threshold :initarg :button-threshold :type xcb:CARD32)
   (status :initarg :status :type xcb:CARD8)
   (iscore :initarg :iscore :type xcb:CARD8)
   (pad~10 :initform 2 :type xcb:-pad)
   (enable :initarg :enable :type xcb:CARD8)
   (pad~11 :initform 3 :type xcb:-pad)
   (offset-x :initarg :offset-x :type xcb:CARD32)
   (offset-y :initarg :offset-y :type xcb:CARD32)
   (width :initarg :width :type xcb:CARD32)
   (height :initarg :height :type xcb:CARD32)
   (screen :initarg :screen :type xcb:CARD32)
   (following :initarg :following :type xcb:CARD32)))

(defclass xcb:xinput:GetDeviceControl
  (xcb:-request)
  ((~opcode :initform 34 :type xcb:-u1)
   (control-id :initarg :control-id :type xcb:CARD16)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceControl~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)
   (control :initarg :control :type xcb:xinput:DeviceState)))

(defclass xcb:xinput:DeviceResolutionCtl
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (first-valuator :initarg :first-valuator :type xcb:CARD8)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (resolution-values :initarg :resolution-values :type xcb:-ignore)
   (resolution-values~ :initform
		       '(name resolution-values type xcb:CARD32 size
			      (xcb:-fieldref 'num-valuators))
		       :type xcb:-list)))

(defclass xcb:xinput:DeviceAbsCalibCtl
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (min-x :initarg :min-x :type xcb:INT32)
   (max-x :initarg :max-x :type xcb:INT32)
   (min-y :initarg :min-y :type xcb:INT32)
   (max-y :initarg :max-y :type xcb:INT32)
   (flip-x :initarg :flip-x :type xcb:CARD32)
   (flip-y :initarg :flip-y :type xcb:CARD32)
   (rotation :initarg :rotation :type xcb:CARD32)
   (button-threshold :initarg :button-threshold :type xcb:CARD32)))

(defclass xcb:xinput:DeviceAbsAreaCtrl
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (offset-x :initarg :offset-x :type xcb:CARD32)
   (offset-y :initarg :offset-y :type xcb:CARD32)
   (width :initarg :width :type xcb:INT32)
   (height :initarg :height :type xcb:INT32)
   (screen :initarg :screen :type xcb:INT32)
   (following :initarg :following :type xcb:CARD32)))

(defclass xcb:xinput:DeviceCoreCtrl
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:DeviceEnableCtrl
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (enable :initarg :enable :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:DeviceCtl
  (xcb:-struct)
  ((control-id :initarg :control-id :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'control-id)
	   cases
	   (((xcb:xinput:DeviceControl:resolution)
	     first-valuator num-valuators pad~10 resolution-values)
	    ((xcb:xinput:DeviceControl:abs_calib)
	     min-x max-x min-y max-y flip-x flip-y rotation button-threshold)
	    ((xcb:xinput:DeviceControl:core)
	     status pad~11)
	    ((xcb:xinput:DeviceControl:enable)
	     enable pad~12)
	    ((xcb:xinput:DeviceControl:abs_area)
	     offset-x offset-y width height screen following)))
	 :type xcb:-switch)
   (first-valuator :initarg :first-valuator :type xcb:CARD8)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (pad~10 :initform 2 :type xcb:-pad)
   (resolution-values :initarg :resolution-values :type xcb:-ignore)
   (resolution-values~ :initform
		       '(name resolution-values type xcb:CARD32 size
			      (xcb:-fieldref 'num-valuators))
		       :type xcb:-list)
   (min-x :initarg :min-x :type xcb:INT32)
   (max-x :initarg :max-x :type xcb:INT32)
   (min-y :initarg :min-y :type xcb:INT32)
   (max-y :initarg :max-y :type xcb:INT32)
   (flip-x :initarg :flip-x :type xcb:CARD32)
   (flip-y :initarg :flip-y :type xcb:CARD32)
   (rotation :initarg :rotation :type xcb:CARD32)
   (button-threshold :initarg :button-threshold :type xcb:CARD32)
   (status :initarg :status :type xcb:CARD8)
   (pad~11 :initform 3 :type xcb:-pad)
   (enable :initarg :enable :type xcb:CARD8)
   (pad~12 :initform 3 :type xcb:-pad)
   (offset-x :initarg :offset-x :type xcb:CARD32)
   (offset-y :initarg :offset-y :type xcb:CARD32)
   (width :initarg :width :type xcb:INT32)
   (height :initarg :height :type xcb:INT32)
   (screen :initarg :screen :type xcb:INT32)
   (following :initarg :following :type xcb:CARD32)))

(defclass xcb:xinput:ChangeDeviceControl
  (xcb:-request)
  ((~opcode :initform 35 :type xcb:-u1)
   (control-id :initarg :control-id :type xcb:CARD16)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (control :initarg :control :type xcb:xinput:DeviceCtl)))
(defclass xcb:xinput:ChangeDeviceControl~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:ListDeviceProperties
  (xcb:-request)
  ((~opcode :initform 36 :type xcb:-u1)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xinput:ListDeviceProperties~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (num-atoms :initarg :num-atoms :type xcb:CARD16)
   (pad~0 :initform 22 :type xcb:-pad)
   (atoms :initarg :atoms :type xcb:-ignore)
   (atoms~ :initform
	   '(name atoms type xcb:ATOM size
		  (xcb:-fieldref 'num-atoms))
	   :type xcb:-list)))

(defconst xcb:xinput:PropertyFormat:8Bits 8)
(defconst xcb:xinput:PropertyFormat:16Bits 16)
(defconst xcb:xinput:PropertyFormat:32Bits 32)

(defclass xcb:xinput:ChangeDeviceProperty
  (xcb:-request)
  ((~opcode :initform 37 :type xcb:-u1)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (device-id :initarg :device-id :type xcb:CARD8)
   (format :initarg :format :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (num-items :initarg :num-items :type xcb:CARD32)
   (items :initform
	  '(expression
	    (xcb:-fieldref 'format)
	    cases
	    (((xcb:xinput:PropertyFormat:8Bits)
	      data8 pad~10)
	     ((xcb:xinput:PropertyFormat:16Bits)
	      data16 pad~11)
	     ((xcb:xinput:PropertyFormat:32Bits)
	      data32)))
	  :type xcb:-switch)
   (data8 :initarg :data8 :type xcb:-ignore)
   (data8~ :initform
	   '(name data8 type xcb:CARD8 size
		  (xcb:-fieldref 'num-items))
	   :type xcb:-list)
   (pad~10 :initform 4 :type xcb:-pad-align)
   (data16 :initarg :data16 :type xcb:-ignore)
   (data16~ :initform
	    '(name data16 type xcb:CARD16 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)
   (pad~11 :initform 4 :type xcb:-pad-align)
   (data32 :initarg :data32 :type xcb:-ignore)
   (data32~ :initform
	    '(name data32 type xcb:CARD32 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)))

(defclass xcb:xinput:DeleteDeviceProperty
  (xcb:-request)
  ((~opcode :initform 38 :type xcb:-u1)
   (property :initarg :property :type xcb:ATOM)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:GetDeviceProperty
  (xcb:-request)
  ((~opcode :initform 39 :type xcb:-u1)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (offset :initarg :offset :type xcb:CARD32)
   (len :initarg :len :type xcb:CARD32)
   (device-id :initarg :device-id :type xcb:CARD8)
   (delete :initarg :delete :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xinput:GetDeviceProperty~reply
  (xcb:-reply)
  ((xi-reply-type :initarg :xi-reply-type :type xcb:CARD8)
   (type :initarg :type :type xcb:ATOM)
   (bytes-after :initarg :bytes-after :type xcb:CARD32)
   (num-items :initarg :num-items :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD8)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 10 :type xcb:-pad)
   (items :initform
	  '(expression
	    (xcb:-fieldref 'format)
	    cases
	    (((xcb:xinput:PropertyFormat:8Bits)
	      data8 pad~10)
	     ((xcb:xinput:PropertyFormat:16Bits)
	      data16 pad~11)
	     ((xcb:xinput:PropertyFormat:32Bits)
	      data32)))
	  :type xcb:-switch)
   (data8 :initarg :data8 :type xcb:-ignore)
   (data8~ :initform
	   '(name data8 type xcb:CARD8 size
		  (xcb:-fieldref 'num-items))
	   :type xcb:-list)
   (pad~10 :initform 4 :type xcb:-pad-align)
   (data16 :initarg :data16 :type xcb:-ignore)
   (data16~ :initform
	    '(name data16 type xcb:CARD16 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)
   (pad~11 :initform 4 :type xcb:-pad-align)
   (data32 :initarg :data32 :type xcb:-ignore)
   (data32~ :initform
	    '(name data32 type xcb:CARD32 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)))

(defconst xcb:xinput:Device:All 0)
(defconst xcb:xinput:Device:AllMaster 1)

(defclass xcb:xinput:GroupInfo
  (xcb:-struct)
  ((base :initarg :base :type xcb:CARD8)
   (latched :initarg :latched :type xcb:CARD8)
   (locked :initarg :locked :type xcb:CARD8)
   (effective :initarg :effective :type xcb:CARD8)))

(defclass xcb:xinput:ModifierInfo
  (xcb:-struct)
  ((base :initarg :base :type xcb:CARD32)
   (latched :initarg :latched :type xcb:CARD32)
   (locked :initarg :locked :type xcb:CARD32)
   (effective :initarg :effective :type xcb:CARD32)))

(defclass xcb:xinput:XIQueryPointer
  (xcb:-request)
  ((~opcode :initform 40 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xinput:XIQueryPointer~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (root :initarg :root :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:xinput:FP1616)
   (root-y :initarg :root-y :type xcb:xinput:FP1616)
   (win-x :initarg :win-x :type xcb:xinput:FP1616)
   (win-y :initarg :win-y :type xcb:xinput:FP1616)
   (same-screen :initarg :same-screen :type xcb:BOOL)
   (pad~1 :initform 1 :type xcb:-pad)
   (buttons-len :initarg :buttons-len :type xcb:CARD16)
   (mods :initarg :mods :type xcb:xinput:ModifierInfo)
   (group :initarg :group :type xcb:xinput:GroupInfo)
   (buttons :initarg :buttons :type xcb:-ignore)
   (buttons~ :initform
	     '(name buttons type xcb:CARD32 size
		    (xcb:-fieldref 'buttons-len))
	     :type xcb:-list)))

(defclass xcb:xinput:XIWarpPointer
  (xcb:-request)
  ((~opcode :initform 41 :type xcb:-u1)
   (src-win :initarg :src-win :type xcb:WINDOW)
   (dst-win :initarg :dst-win :type xcb:WINDOW)
   (src-x :initarg :src-x :type xcb:xinput:FP1616)
   (src-y :initarg :src-y :type xcb:xinput:FP1616)
   (src-width :initarg :src-width :type xcb:CARD16)
   (src-height :initarg :src-height :type xcb:CARD16)
   (dst-x :initarg :dst-x :type xcb:xinput:FP1616)
   (dst-y :initarg :dst-y :type xcb:xinput:FP1616)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:XIChangeCursor
  (xcb:-request)
  ((~opcode :initform 42 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))

(defconst xcb:xinput:HierarchyChangeType:AddMaster 1)
(defconst xcb:xinput:HierarchyChangeType:RemoveMaster 2)
(defconst xcb:xinput:HierarchyChangeType:AttachSlave 3)
(defconst xcb:xinput:HierarchyChangeType:DetachSlave 4)

(defconst xcb:xinput:ChangeMode:Attach 1)
(defconst xcb:xinput:ChangeMode:Float 2)

(defclass xcb:xinput:AddMaster
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (name-len :initarg :name-len :type xcb:CARD16)
   (send-core :initarg :send-core :type xcb:BOOL)
   (enable :initarg :enable :type xcb:BOOL)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)))

(defclass xcb:xinput:RemoveMaster
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (return-mode :initarg :return-mode :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (return-pointer :initarg :return-pointer :type xcb:xinput:DeviceId)
   (return-keyboard :initarg :return-keyboard :type xcb:xinput:DeviceId)))

(defclass xcb:xinput:AttachSlave
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (master :initarg :master :type xcb:xinput:DeviceId)))

(defclass xcb:xinput:DetachSlave
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:HierarchyChange
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'type)
	   cases
	   (((xcb:xinput:HierarchyChangeType:AddMaster)
	     name-len send-core enable name pad~10)
	    ((xcb:xinput:HierarchyChangeType:RemoveMaster)
	     deviceid return-mode pad~11 return-pointer return-keyboard)
	    ((xcb:xinput:HierarchyChangeType:AttachSlave)
	     deviceid* master)
	    ((xcb:xinput:HierarchyChangeType:DetachSlave)
	     deviceid** pad~12)))
	 :type xcb:-switch)
   (name-len :initarg :name-len :type xcb:CARD16)
   (send-core :initarg :send-core :type xcb:BOOL)
   (enable :initarg :enable :type xcb:BOOL)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)
   (pad~10 :initform 4 :type xcb:-pad-align)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (return-mode :initarg :return-mode :type xcb:CARD8)
   (pad~11 :initform 1 :type xcb:-pad)
   (return-pointer :initarg :return-pointer :type xcb:xinput:DeviceId)
   (return-keyboard :initarg :return-keyboard :type xcb:xinput:DeviceId)
   (deviceid* :initarg :deviceid* :type xcb:xinput:DeviceId)
   (master :initarg :master :type xcb:xinput:DeviceId)
   (deviceid** :initarg :deviceid** :type xcb:xinput:DeviceId)
   (pad~12 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:XIChangeHierarchy
  (xcb:-request)
  ((~opcode :initform 43 :type xcb:-u1)
   (num-changes :initarg :num-changes :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (changes :initarg :changes :type xcb:-ignore)
   (changes~ :initform
	     '(name changes type xcb:xinput:HierarchyChange size
		    (xcb:-fieldref 'num-changes))
	     :type xcb:-list)))

(defclass xcb:xinput:XISetClientPointer
  (xcb:-request)
  ((~opcode :initform 44 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:XIGetClientPointer
  (xcb:-request)
  ((~opcode :initform 45 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xinput:XIGetClientPointer~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (set :initarg :set :type xcb:BOOL)
   (pad~1 :initform 1 :type xcb:-pad)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~2 :initform 20 :type xcb:-pad)))

(defconst xcb:xinput:XIEventMask:DeviceChanged 2)
(defconst xcb:xinput:XIEventMask:KeyPress 4)
(defconst xcb:xinput:XIEventMask:KeyRelease 8)
(defconst xcb:xinput:XIEventMask:ButtonPress 16)
(defconst xcb:xinput:XIEventMask:ButtonRelease 32)
(defconst xcb:xinput:XIEventMask:Motion 64)
(defconst xcb:xinput:XIEventMask:Enter 128)
(defconst xcb:xinput:XIEventMask:Leave 256)
(defconst xcb:xinput:XIEventMask:FocusIn 512)
(defconst xcb:xinput:XIEventMask:FocusOut 1024)
(defconst xcb:xinput:XIEventMask:Hierarchy 2048)
(defconst xcb:xinput:XIEventMask:Property 4096)
(defconst xcb:xinput:XIEventMask:RawKeyPress 8192)
(defconst xcb:xinput:XIEventMask:RawKeyRelease 16384)
(defconst xcb:xinput:XIEventMask:RawButtonPress 32768)
(defconst xcb:xinput:XIEventMask:RawButtonRelease 65536)
(defconst xcb:xinput:XIEventMask:RawMotion 131072)
(defconst xcb:xinput:XIEventMask:TouchBegin 262144)
(defconst xcb:xinput:XIEventMask:TouchUpdate 524288)
(defconst xcb:xinput:XIEventMask:TouchEnd 1048576)
(defconst xcb:xinput:XIEventMask:TouchOwnership 2097152)
(defconst xcb:xinput:XIEventMask:RawTouchBegin 4194304)
(defconst xcb:xinput:XIEventMask:RawTouchUpdate 8388608)
(defconst xcb:xinput:XIEventMask:RawTouchEnd 16777216)
(defconst xcb:xinput:XIEventMask:BarrierHit 33554432)
(defconst xcb:xinput:XIEventMask:BarrierLeave 67108864)

(defclass xcb:xinput:EventMask
  (xcb:-struct)
  ((deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (mask-len :initarg :mask-len :type xcb:CARD16)
   (mask :initarg :mask :type xcb:-ignore)
   (mask~ :initform
	  '(name mask type xcb:CARD32 size
		 (xcb:-fieldref 'mask-len))
	  :type xcb:-list)))

(defclass xcb:xinput:XISelectEvents
  (xcb:-request)
  ((~opcode :initform 46 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (num-mask :initarg :num-mask :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (masks :initarg :masks :type xcb:-ignore)
   (masks~ :initform
	   '(name masks type xcb:xinput:EventMask size
		  (xcb:-fieldref 'num-mask))
	   :type xcb:-list)))

(defclass xcb:xinput:XIQueryVersion
  (xcb:-request)
  ((~opcode :initform 47 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD16)
   (minor-version :initarg :minor-version :type xcb:CARD16)))
(defclass xcb:xinput:XIQueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD16)
   (minor-version :initarg :minor-version :type xcb:CARD16)
   (pad~1 :initform 20 :type xcb:-pad)))

(defconst xcb:xinput:DeviceClassType:Key 0)
(defconst xcb:xinput:DeviceClassType:Button 1)
(defconst xcb:xinput:DeviceClassType:Valuator 2)
(defconst xcb:xinput:DeviceClassType:Scroll 3)
(defconst xcb:xinput:DeviceClassType:Touch 8)

(defconst xcb:xinput:DeviceType:MasterPointer 1)
(defconst xcb:xinput:DeviceType:MasterKeyboard 2)
(defconst xcb:xinput:DeviceType:SlavePointer 3)
(defconst xcb:xinput:DeviceType:SlaveKeyboard 4)
(defconst xcb:xinput:DeviceType:FloatingSlave 5)

(defconst xcb:xinput:ScrollFlags:NoEmulation 1)
(defconst xcb:xinput:ScrollFlags:Preferred 2)

(defconst xcb:xinput:ScrollType:Vertical 1)
(defconst xcb:xinput:ScrollType:Horizontal 2)

(defconst xcb:xinput:TouchMode:Direct 1)
(defconst xcb:xinput:TouchMode:Dependent 2)

(defclass xcb:xinput:ButtonClass
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (num-buttons :initarg :num-buttons :type xcb:CARD16)
   (state :initarg :state :type xcb:-ignore)
   (state~ :initform
	   '(name state type xcb:CARD32 size
		  (/
		   (+
		    (xcb:-fieldref 'num-buttons)
		    31)
		   32))
	   :type xcb:-list)
   (labels :initarg :labels :type xcb:-ignore)
   (labels~ :initform
	    '(name labels type xcb:ATOM size
		   (xcb:-fieldref 'num-buttons))
	    :type xcb:-list)))

(defclass xcb:xinput:KeyClass
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (num-keys :initarg :num-keys :type xcb:CARD16)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD32 size
		 (xcb:-fieldref 'num-keys))
	  :type xcb:-list)))

(defclass xcb:xinput:ScrollClass
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (number :initarg :number :type xcb:CARD16)
   (scroll-type :initarg :scroll-type :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (increment :initarg :increment :type xcb:xinput:FP3232)))

(defclass xcb:xinput:TouchClass
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (mode :initarg :mode :type xcb:CARD8)
   (num-touches :initarg :num-touches :type xcb:CARD8)))

(defclass xcb:xinput:ValuatorClass
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (number :initarg :number :type xcb:CARD16)
   (label :initarg :label :type xcb:ATOM)
   (min :initarg :min :type xcb:xinput:FP3232)
   (max :initarg :max :type xcb:xinput:FP3232)
   (value :initarg :value :type xcb:xinput:FP3232)
   (resolution :initarg :resolution :type xcb:CARD32)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:DeviceClass
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD16)
   (len :initarg :len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (data :initform
	 '(expression
	   (xcb:-fieldref 'type)
	   cases
	   (((xcb:xinput:DeviceClassType:Key)
	     num-keys keys)
	    ((xcb:xinput:DeviceClassType:Button)
	     num-buttons state labels)
	    ((xcb:xinput:DeviceClassType:Valuator)
	     number label min max value resolution mode pad~10)
	    ((xcb:xinput:DeviceClassType:Scroll)
	     number* scroll-type pad~11 flags increment)
	    ((xcb:xinput:DeviceClassType:Touch)
	     mode* num-touches)))
	 :type xcb:-switch)
   (num-keys :initarg :num-keys :type xcb:CARD16)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD32 size
		 (xcb:-fieldref 'num-keys))
	  :type xcb:-list)
   (num-buttons :initarg :num-buttons :type xcb:CARD16)
   (state :initarg :state :type xcb:-ignore)
   (state~ :initform
	   '(name state type xcb:CARD32 size
		  (/
		   (+
		    (xcb:-fieldref 'num-buttons)
		    31)
		   32))
	   :type xcb:-list)
   (labels :initarg :labels :type xcb:-ignore)
   (labels~ :initform
	    '(name labels type xcb:ATOM size
		   (xcb:-fieldref 'num-buttons))
	    :type xcb:-list)
   (number :initarg :number :type xcb:CARD16)
   (label :initarg :label :type xcb:ATOM)
   (min :initarg :min :type xcb:xinput:FP3232)
   (max :initarg :max :type xcb:xinput:FP3232)
   (value :initarg :value :type xcb:xinput:FP3232)
   (resolution :initarg :resolution :type xcb:CARD32)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~10 :initform 3 :type xcb:-pad)
   (number* :initarg :number* :type xcb:CARD16)
   (scroll-type :initarg :scroll-type :type xcb:CARD16)
   (pad~11 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (increment :initarg :increment :type xcb:xinput:FP3232)
   (mode* :initarg :mode* :type xcb:CARD8)
   (num-touches :initarg :num-touches :type xcb:CARD8)))

(defclass xcb:xinput:XIDeviceInfo
  (xcb:-struct)
  ((deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (type :initarg :type :type xcb:CARD16)
   (attachment :initarg :attachment :type xcb:xinput:DeviceId)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (name-len :initarg :name-len :type xcb:CARD16)
   (enabled :initarg :enabled :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:DeviceClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defclass xcb:xinput:XIQueryDevice
  (xcb:-request)
  ((~opcode :initform 48 :type xcb:-u1)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xinput:XIQueryDevice~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-infos :initarg :num-infos :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (infos :initarg :infos :type xcb:-ignore)
   (infos~ :initform
	   '(name infos type xcb:xinput:XIDeviceInfo size
		  (xcb:-fieldref 'num-infos))
	   :type xcb:-list)))

(defclass xcb:xinput:XISetFocus
  (xcb:-request)
  ((~opcode :initform 49 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xinput:XIGetFocus
  (xcb:-request)
  ((~opcode :initform 50 :type xcb:-u1)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xinput:XIGetFocus~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (focus :initarg :focus :type xcb:WINDOW)
   (pad~1 :initform 20 :type xcb:-pad)))

(defconst xcb:xinput:GrabOwner:NoOwner 0)
(defconst xcb:xinput:GrabOwner:Owner 1)

(defclass xcb:xinput:XIGrabDevice
  (xcb:-request)
  ((~opcode :initform 51 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (time :initarg :time :type xcb:TIMESTAMP)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (mode :initarg :mode :type xcb:CARD8)
   (paired-device-mode :initarg :paired-device-mode :type xcb:CARD8)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (mask-len :initarg :mask-len :type xcb:CARD16)
   (mask :initarg :mask :type xcb:-ignore)
   (mask~ :initform
	  '(name mask type xcb:CARD32 size
		 (xcb:-fieldref 'mask-len))
	  :type xcb:-list)))
(defclass xcb:xinput:XIGrabDevice~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (status :initarg :status :type xcb:CARD8)
   (pad~1 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:XIUngrabDevice
  (xcb:-request)
  ((~opcode :initform 52 :type xcb:-u1)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))

(defconst xcb:xinput:EventMode:AsyncDevice 0)
(defconst xcb:xinput:EventMode:SyncDevice 1)
(defconst xcb:xinput:EventMode:ReplayDevice 2)
(defconst xcb:xinput:EventMode:AsyncPairedDevice 3)
(defconst xcb:xinput:EventMode:AsyncPair 4)
(defconst xcb:xinput:EventMode:SyncPair 5)
(defconst xcb:xinput:EventMode:AcceptTouch 6)
(defconst xcb:xinput:EventMode:RejectTouch 7)

(defclass xcb:xinput:XIAllowEvents
  (xcb:-request)
  ((~opcode :initform 53 :type xcb:-u1)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (event-mode :initarg :event-mode :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (touchid :initarg :touchid :type xcb:CARD32)
   (grab-window :initarg :grab-window :type xcb:WINDOW)))

(defconst xcb:xinput:GrabMode22:Sync 0)
(defconst xcb:xinput:GrabMode22:Async 1)
(defconst xcb:xinput:GrabMode22:Touch 2)

(defconst xcb:xinput:GrabType:Button 0)
(defconst xcb:xinput:GrabType:Keycode 1)
(defconst xcb:xinput:GrabType:Enter 2)
(defconst xcb:xinput:GrabType:FocusIn 3)
(defconst xcb:xinput:GrabType:TouchBegin 4)

(defconst xcb:xinput:ModifierMask:Any 2147483648)

(defclass xcb:xinput:GrabModifierInfo
  (xcb:-struct)
  ((modifiers :initarg :modifiers :type xcb:CARD32)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xinput:XIPassiveGrabDevice
  (xcb:-request)
  ((~opcode :initform 54 :type xcb:-u1)
   (time :initarg :time :type xcb:TIMESTAMP)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (cursor :initarg :cursor :type xcb:CURSOR)
   (detail :initarg :detail :type xcb:CARD32)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (num-modifiers :initarg :num-modifiers :type xcb:CARD16)
   (mask-len :initarg :mask-len :type xcb:CARD16)
   (grab-type :initarg :grab-type :type xcb:CARD8)
   (grab-mode :initarg :grab-mode :type xcb:CARD8)
   (paired-device-mode :initarg :paired-device-mode :type xcb:CARD8)
   (owner-events :initarg :owner-events :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (mask :initarg :mask :type xcb:-ignore)
   (mask~ :initform
	  '(name mask type xcb:CARD32 size
		 (xcb:-fieldref 'mask-len))
	  :type xcb:-list)
   (modifiers :initarg :modifiers :type xcb:-ignore)
   (modifiers~ :initform
	       '(name modifiers type xcb:CARD32 size
		      (xcb:-fieldref 'num-modifiers))
	       :type xcb:-list)))
(defclass xcb:xinput:XIPassiveGrabDevice~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-modifiers :initarg :num-modifiers :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (modifiers :initarg :modifiers :type xcb:-ignore)
   (modifiers~ :initform
	       '(name modifiers type xcb:xinput:GrabModifierInfo size
		      (xcb:-fieldref 'num-modifiers))
	       :type xcb:-list)))

(defclass xcb:xinput:XIPassiveUngrabDevice
  (xcb:-request)
  ((~opcode :initform 55 :type xcb:-u1)
   (grab-window :initarg :grab-window :type xcb:WINDOW)
   (detail :initarg :detail :type xcb:CARD32)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (num-modifiers :initarg :num-modifiers :type xcb:CARD16)
   (grab-type :initarg :grab-type :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (modifiers :initarg :modifiers :type xcb:-ignore)
   (modifiers~ :initform
	       '(name modifiers type xcb:CARD32 size
		      (xcb:-fieldref 'num-modifiers))
	       :type xcb:-list)))

(defclass xcb:xinput:XIListProperties
  (xcb:-request)
  ((~opcode :initform 56 :type xcb:-u1)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xinput:XIListProperties~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-properties :initarg :num-properties :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (properties :initarg :properties :type xcb:-ignore)
   (properties~ :initform
		'(name properties type xcb:ATOM size
		       (xcb:-fieldref 'num-properties))
		:type xcb:-list)))

(defclass xcb:xinput:XIChangeProperty
  (xcb:-request)
  ((~opcode :initform 57 :type xcb:-u1)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (mode :initarg :mode :type xcb:CARD8)
   (format :initarg :format :type xcb:CARD8)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (num-items :initarg :num-items :type xcb:CARD32)
   (items :initform
	  '(expression
	    (xcb:-fieldref 'format)
	    cases
	    (((xcb:xinput:PropertyFormat:8Bits)
	      data8 pad~10)
	     ((xcb:xinput:PropertyFormat:16Bits)
	      data16 pad~11)
	     ((xcb:xinput:PropertyFormat:32Bits)
	      data32)))
	  :type xcb:-switch)
   (data8 :initarg :data8 :type xcb:-ignore)
   (data8~ :initform
	   '(name data8 type xcb:CARD8 size
		  (xcb:-fieldref 'num-items))
	   :type xcb:-list)
   (pad~10 :initform 4 :type xcb:-pad-align)
   (data16 :initarg :data16 :type xcb:-ignore)
   (data16~ :initform
	    '(name data16 type xcb:CARD16 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)
   (pad~11 :initform 4 :type xcb:-pad-align)
   (data32 :initarg :data32 :type xcb:-ignore)
   (data32~ :initform
	    '(name data32 type xcb:CARD32 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)))

(defclass xcb:xinput:XIDeleteProperty
  (xcb:-request)
  ((~opcode :initform 58 :type xcb:-u1)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (property :initarg :property :type xcb:ATOM)))

(defclass xcb:xinput:XIGetProperty
  (xcb:-request)
  ((~opcode :initform 59 :type xcb:-u1)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (delete :initarg :delete :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (offset :initarg :offset :type xcb:CARD32)
   (len :initarg :len :type xcb:CARD32)))
(defclass xcb:xinput:XIGetProperty~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (type :initarg :type :type xcb:ATOM)
   (bytes-after :initarg :bytes-after :type xcb:CARD32)
   (num-items :initarg :num-items :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD8)
   (pad~1 :initform 11 :type xcb:-pad)
   (items :initform
	  '(expression
	    (xcb:-fieldref 'format)
	    cases
	    (((xcb:xinput:PropertyFormat:8Bits)
	      data8 pad~10)
	     ((xcb:xinput:PropertyFormat:16Bits)
	      data16 pad~11)
	     ((xcb:xinput:PropertyFormat:32Bits)
	      data32)))
	  :type xcb:-switch)
   (data8 :initarg :data8 :type xcb:-ignore)
   (data8~ :initform
	   '(name data8 type xcb:CARD8 size
		  (xcb:-fieldref 'num-items))
	   :type xcb:-list)
   (pad~10 :initform 4 :type xcb:-pad-align)
   (data16 :initarg :data16 :type xcb:-ignore)
   (data16~ :initform
	    '(name data16 type xcb:CARD16 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)
   (pad~11 :initform 4 :type xcb:-pad-align)
   (data32 :initarg :data32 :type xcb:-ignore)
   (data32~ :initform
	    '(name data32 type xcb:CARD32 size
		   (xcb:-fieldref 'num-items))
	    :type xcb:-list)))

(defclass xcb:xinput:XIGetSelectedEvents
  (xcb:-request)
  ((~opcode :initform 60 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xinput:XIGetSelectedEvents~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-masks :initarg :num-masks :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (masks :initarg :masks :type xcb:-ignore)
   (masks~ :initform
	   '(name masks type xcb:xinput:EventMask size
		  (xcb:-fieldref 'num-masks))
	   :type xcb:-list)))

(defclass xcb:xinput:BarrierReleasePointerInfo
  (xcb:-struct)
  ((deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (barrier :initarg :barrier :type xcb:xinput:BARRIER)
   (eventid :initarg :eventid :type xcb:CARD32)))

(defclass xcb:xinput:XIBarrierReleasePointer
  (xcb:-request)
  ((~opcode :initform 61 :type xcb:-u1)
   (num-barriers :initarg :num-barriers :type xcb:CARD32)
   (barriers :initarg :barriers :type xcb:-ignore)
   (barriers~ :initform
	      '(name barriers type xcb:xinput:BarrierReleasePointerInfo size
		     (xcb:-fieldref 'num-barriers))
	      :type xcb:-list)))

(defclass xcb:xinput:DeviceValuator
  (xcb:-event)
  ((device-id :initarg :device-id :type xcb:CARD8)
   (device-state :initarg :device-state :type xcb:CARD16)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (first-valuator :initarg :first-valuator :type xcb:CARD8)
   (valuators :initarg :valuators :type xcb:-ignore)
   (valuators~ :initform
	       '(name valuators type xcb:INT32 size 6)
	       :type xcb:-list)))

(defconst xcb:xinput:MoreEventsMask:MoreEvents 128)

(defclass xcb:xinput:DeviceKeyPress
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
   (device-id :initarg :device-id :type xcb:CARD8)))

(defclass xcb:xinput:DeviceKeyRelease
  (xcb:-event xcb:xinput:DeviceKeyPress)
  nil)

(defclass xcb:xinput:DeviceButtonPress
  (xcb:-event xcb:xinput:DeviceKeyPress)
  nil)

(defclass xcb:xinput:DeviceButtonRelease
  (xcb:-event xcb:xinput:DeviceKeyPress)
  nil)

(defclass xcb:xinput:DeviceMotionNotify
  (xcb:-event xcb:xinput:DeviceKeyPress)
  nil)

(defclass xcb:xinput:DeviceFocusIn
  (xcb:-event)
  ((detail :initarg :detail :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (window :initarg :window :type xcb:WINDOW)
   (mode :initarg :mode :type xcb:BYTE)
   (device-id :initarg :device-id :type xcb:CARD8)
   (pad~0 :initform 18 :type xcb:-pad)))

(defclass xcb:xinput:DeviceFocusOut
  (xcb:-event xcb:xinput:DeviceFocusIn)
  nil)

(defclass xcb:xinput:ProximityIn
  (xcb:-event xcb:xinput:DeviceKeyPress)
  nil)

(defclass xcb:xinput:ProximityOut
  (xcb:-event xcb:xinput:DeviceKeyPress)
  nil)

(defconst xcb:xinput:ClassesReportedMask:OutOfProximity 128)
(defconst xcb:xinput:ClassesReportedMask:DeviceModeAbsolute 64)
(defconst xcb:xinput:ClassesReportedMask:ReportingValuators 4)
(defconst xcb:xinput:ClassesReportedMask:ReportingButtons 2)
(defconst xcb:xinput:ClassesReportedMask:ReportingKeys 1)

(defclass xcb:xinput:DeviceStateNotify
  (xcb:-event)
  ((device-id :initarg :device-id :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (num-keys :initarg :num-keys :type xcb:CARD8)
   (num-buttons :initarg :num-buttons :type xcb:CARD8)
   (num-valuators :initarg :num-valuators :type xcb:CARD8)
   (classes-reported :initarg :classes-reported :type xcb:CARD8)
   (buttons :initarg :buttons :type xcb:-ignore)
   (buttons~ :initform
	     '(name buttons type xcb:CARD8 size 4)
	     :type xcb:-list)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD8 size 4)
	  :type xcb:-list)
   (valuators :initarg :valuators :type xcb:-ignore)
   (valuators~ :initform
	       '(name valuators type xcb:CARD32 size 3)
	       :type xcb:-list)))

(defclass xcb:xinput:DeviceMappingNotify
  (xcb:-event)
  ((device-id :initarg :device-id :type xcb:BYTE)
   (request :initarg :request :type xcb:CARD8)
   (first-keycode :initarg :first-keycode :type xcb:xinput:KeyCode)
   (count :initarg :count :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)
   (pad~1 :initform 20 :type xcb:-pad)))

(defconst xcb:xinput:ChangeDevice:NewPointer 0)
(defconst xcb:xinput:ChangeDevice:NewKeyboard 1)

(defclass xcb:xinput:ChangeDeviceNotify
  (xcb:-event)
  ((device-id :initarg :device-id :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (request :initarg :request :type xcb:CARD8)
   (pad~0 :initform 23 :type xcb:-pad)))

(defclass xcb:xinput:DeviceKeyStateNotify
  (xcb:-event)
  ((device-id :initarg :device-id :type xcb:BYTE)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:CARD8 size 28)
	  :type xcb:-list)))

(defclass xcb:xinput:DeviceButtonStateNotify
  (xcb:-event)
  ((device-id :initarg :device-id :type xcb:BYTE)
   (buttons :initarg :buttons :type xcb:-ignore)
   (buttons~ :initform
	     '(name buttons type xcb:CARD8 size 28)
	     :type xcb:-list)))

(defconst xcb:xinput:DeviceChange:Added 0)
(defconst xcb:xinput:DeviceChange:Removed 1)
(defconst xcb:xinput:DeviceChange:Enabled 2)
(defconst xcb:xinput:DeviceChange:Disabled 3)
(defconst xcb:xinput:DeviceChange:Unrecoverable 4)
(defconst xcb:xinput:DeviceChange:ControlChanged 5)

(defclass xcb:xinput:DevicePresenceNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)
   (devchange :initarg :devchange :type xcb:BYTE)
   (device-id :initarg :device-id :type xcb:BYTE)
   (control :initarg :control :type xcb:CARD16)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:xinput:DevicePropertyNotify
  (xcb:-event)
  ((state :initarg :state :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (property :initarg :property :type xcb:ATOM)
   (pad~0 :initform 19 :type xcb:-pad)
   (device-id :initarg :device-id :type xcb:CARD8)))

(defconst xcb:xinput:ChangeReason:SlaveSwitch 1)
(defconst xcb:xinput:ChangeReason:DeviceChange 2)

(defclass xcb:xinput:DeviceChanged
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (num-classes :initarg :num-classes :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (reason :initarg :reason :type xcb:CARD8)
   (pad~0 :initform 11 :type xcb:-pad)
   (classes :initarg :classes :type xcb:-ignore)
   (classes~ :initform
	     '(name classes type xcb:xinput:DeviceClass size
		    (xcb:-fieldref 'num-classes))
	     :type xcb:-list)))

(defconst xcb:xinput:KeyEventFlags:KeyRepeat 65536)

(defclass xcb:xinput:KeyPress
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (detail :initarg :detail :type xcb:CARD32)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:xinput:FP1616)
   (root-y :initarg :root-y :type xcb:xinput:FP1616)
   (event-x :initarg :event-x :type xcb:xinput:FP1616)
   (event-y :initarg :event-y :type xcb:xinput:FP1616)
   (buttons-len :initarg :buttons-len :type xcb:CARD16)
   (valuators-len :initarg :valuators-len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (mods :initarg :mods :type xcb:xinput:ModifierInfo)
   (group :initarg :group :type xcb:xinput:GroupInfo)
   (button-mask :initarg :button-mask :type xcb:-ignore)
   (button-mask~ :initform
		 '(name button-mask type xcb:CARD32 size
			(xcb:-fieldref 'buttons-len))
		 :type xcb:-list)
   (valuator-mask :initarg :valuator-mask :type xcb:-ignore)
   (valuator-mask~ :initform
		   '(name valuator-mask type xcb:CARD32 size
			  (xcb:-fieldref 'valuators-len))
		   :type xcb:-list)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:xinput:FP3232 size
		       (apply '+
			      (mapcar
			       (lambda
				 (i)
				 (eval
				  '(xcb:-popcount obj)
				  (list
				   (nconc
				    '(obj)
				    i))))
			       (slot-value obj 'valuator-mask))))
		:type xcb:-list)))

(defclass xcb:xinput:KeyRelease
  (xcb:-event xcb:KeyPress)
  nil)

(defconst xcb:xinput:PointerEventFlags:PointerEmulated 65536)

(defclass xcb:xinput:ButtonPress
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (detail :initarg :detail :type xcb:CARD32)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:xinput:FP1616)
   (root-y :initarg :root-y :type xcb:xinput:FP1616)
   (event-x :initarg :event-x :type xcb:xinput:FP1616)
   (event-y :initarg :event-y :type xcb:xinput:FP1616)
   (buttons-len :initarg :buttons-len :type xcb:CARD16)
   (valuators-len :initarg :valuators-len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (mods :initarg :mods :type xcb:xinput:ModifierInfo)
   (group :initarg :group :type xcb:xinput:GroupInfo)
   (button-mask :initarg :button-mask :type xcb:-ignore)
   (button-mask~ :initform
		 '(name button-mask type xcb:CARD32 size
			(xcb:-fieldref 'buttons-len))
		 :type xcb:-list)
   (valuator-mask :initarg :valuator-mask :type xcb:-ignore)
   (valuator-mask~ :initform
		   '(name valuator-mask type xcb:CARD32 size
			  (xcb:-fieldref 'valuators-len))
		   :type xcb:-list)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:xinput:FP3232 size
		       (apply '+
			      (mapcar
			       (lambda
				 (i)
				 (eval
				  '(xcb:-popcount obj)
				  (list
				   (nconc
				    '(obj)
				    i))))
			       (slot-value obj 'valuator-mask))))
		:type xcb:-list)))

(defclass xcb:xinput:ButtonRelease
  (xcb:-event xcb:ButtonPress)
  nil)

(defclass xcb:xinput:Motion
  (xcb:-event xcb:ButtonPress)
  nil)

(defconst xcb:xinput:NotifyMode:Normal 0)
(defconst xcb:xinput:NotifyMode:Grab 1)
(defconst xcb:xinput:NotifyMode:Ungrab 2)
(defconst xcb:xinput:NotifyMode:WhileGrabbed 3)
(defconst xcb:xinput:NotifyMode:PassiveGrab 4)
(defconst xcb:xinput:NotifyMode:PassiveUngrab 5)

(defconst xcb:xinput:NotifyDetail:Ancestor 0)
(defconst xcb:xinput:NotifyDetail:Virtual 1)
(defconst xcb:xinput:NotifyDetail:Inferior 2)
(defconst xcb:xinput:NotifyDetail:Nonlinear 3)
(defconst xcb:xinput:NotifyDetail:NonlinearVirtual 4)
(defconst xcb:xinput:NotifyDetail:Pointer 5)
(defconst xcb:xinput:NotifyDetail:PointerRoot 6)
(defconst xcb:xinput:NotifyDetail:None 7)

(defclass xcb:xinput:Enter
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (mode :initarg :mode :type xcb:CARD8)
   (detail :initarg :detail :type xcb:CARD8)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:xinput:FP1616)
   (root-y :initarg :root-y :type xcb:xinput:FP1616)
   (event-x :initarg :event-x :type xcb:xinput:FP1616)
   (event-y :initarg :event-y :type xcb:xinput:FP1616)
   (same-screen :initarg :same-screen :type xcb:BOOL)
   (focus :initarg :focus :type xcb:BOOL)
   (buttons-len :initarg :buttons-len :type xcb:CARD16)
   (mods :initarg :mods :type xcb:xinput:ModifierInfo)
   (group :initarg :group :type xcb:xinput:GroupInfo)
   (buttons :initarg :buttons :type xcb:-ignore)
   (buttons~ :initform
	     '(name buttons type xcb:CARD32 size
		    (xcb:-fieldref 'buttons-len))
	     :type xcb:-list)))

(defclass xcb:xinput:Leave
  (xcb:-event xcb:xinput:Enter)
  nil)

(defclass xcb:xinput:FocusIn
  (xcb:-event xcb:xinput:Enter)
  nil)

(defclass xcb:xinput:FocusOut
  (xcb:-event xcb:xinput:Enter)
  nil)

(defconst xcb:xinput:HierarchyMask:MasterAdded 1)
(defconst xcb:xinput:HierarchyMask:MasterRemoved 2)
(defconst xcb:xinput:HierarchyMask:SlaveAdded 4)
(defconst xcb:xinput:HierarchyMask:SlaveRemoved 8)
(defconst xcb:xinput:HierarchyMask:SlaveAttached 16)
(defconst xcb:xinput:HierarchyMask:SlaveDetached 32)
(defconst xcb:xinput:HierarchyMask:DeviceEnabled 64)
(defconst xcb:xinput:HierarchyMask:DeviceDisabled 128)

(defclass xcb:xinput:HierarchyInfo
  (xcb:-struct)
  ((deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (attachment :initarg :attachment :type xcb:xinput:DeviceId)
   (type :initarg :type :type xcb:CARD8)
   (enabled :initarg :enabled :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)))

(defclass xcb:xinput:Hierarchy
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (flags :initarg :flags :type xcb:CARD32)
   (num-infos :initarg :num-infos :type xcb:CARD16)
   (pad~0 :initform 10 :type xcb:-pad)
   (infos :initarg :infos :type xcb:-ignore)
   (infos~ :initform
	   '(name infos type xcb:xinput:HierarchyInfo size
		  (xcb:-fieldref 'num-infos))
	   :type xcb:-list)))

(defconst xcb:xinput:PropertyFlag:Deleted 0)
(defconst xcb:xinput:PropertyFlag:Created 1)
(defconst xcb:xinput:PropertyFlag:Modified 2)

(defclass xcb:xinput:Property
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (property :initarg :property :type xcb:ATOM)
   (what :initarg :what :type xcb:CARD8)
   (pad~0 :initform 11 :type xcb:-pad)))

(defclass xcb:xinput:RawKeyPress
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (detail :initarg :detail :type xcb:CARD32)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (valuators-len :initarg :valuators-len :type xcb:CARD16)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~0 :initform 4 :type xcb:-pad)
   (valuator-mask :initarg :valuator-mask :type xcb:-ignore)
   (valuator-mask~ :initform
		   '(name valuator-mask type xcb:CARD32 size
			  (xcb:-fieldref 'valuators-len))
		   :type xcb:-list)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:xinput:FP3232 size
		       (apply '+
			      (mapcar
			       (lambda
				 (i)
				 (eval
				  '(xcb:-popcount obj)
				  (list
				   (nconc
				    '(obj)
				    i))))
			       (slot-value obj 'valuator-mask))))
		:type xcb:-list)
   (axisvalues-raw :initarg :axisvalues-raw :type xcb:-ignore)
   (axisvalues-raw~ :initform
		    '(name axisvalues-raw type xcb:xinput:FP3232 size
			   (apply '+
				  (mapcar
				   (lambda
				     (i)
				     (eval
				      '(xcb:-popcount obj)
				      (list
				       (nconc
					'(obj)
					i))))
				   (slot-value obj 'valuator-mask))))
		    :type xcb:-list)))

(defclass xcb:xinput:RawKeyRelease
  (xcb:-event xcb:xinput:RawKeyPress)
  nil)

(defclass xcb:xinput:RawButtonPress
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (detail :initarg :detail :type xcb:CARD32)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (valuators-len :initarg :valuators-len :type xcb:CARD16)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~0 :initform 4 :type xcb:-pad)
   (valuator-mask :initarg :valuator-mask :type xcb:-ignore)
   (valuator-mask~ :initform
		   '(name valuator-mask type xcb:CARD32 size
			  (xcb:-fieldref 'valuators-len))
		   :type xcb:-list)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:xinput:FP3232 size
		       (apply '+
			      (mapcar
			       (lambda
				 (i)
				 (eval
				  '(xcb:-popcount obj)
				  (list
				   (nconc
				    '(obj)
				    i))))
			       (slot-value obj 'valuator-mask))))
		:type xcb:-list)
   (axisvalues-raw :initarg :axisvalues-raw :type xcb:-ignore)
   (axisvalues-raw~ :initform
		    '(name axisvalues-raw type xcb:xinput:FP3232 size
			   (apply '+
				  (mapcar
				   (lambda
				     (i)
				     (eval
				      '(xcb:-popcount obj)
				      (list
				       (nconc
					'(obj)
					i))))
				   (slot-value obj 'valuator-mask))))
		    :type xcb:-list)))

(defclass xcb:xinput:RawButtonRelease
  (xcb:-event xcb:xinput:RawButtonPress)
  nil)

(defclass xcb:xinput:RawMotion
  (xcb:-event xcb:xinput:RawButtonPress)
  nil)

(defconst xcb:xinput:TouchEventFlags:TouchPendingEnd 65536)
(defconst xcb:xinput:TouchEventFlags:TouchEmulatingPointer 131072)

(defclass xcb:xinput:TouchBegin
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (detail :initarg :detail :type xcb:CARD32)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (root-x :initarg :root-x :type xcb:xinput:FP1616)
   (root-y :initarg :root-y :type xcb:xinput:FP1616)
   (event-x :initarg :event-x :type xcb:xinput:FP1616)
   (event-y :initarg :event-y :type xcb:xinput:FP1616)
   (buttons-len :initarg :buttons-len :type xcb:CARD16)
   (valuators-len :initarg :valuators-len :type xcb:CARD16)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (mods :initarg :mods :type xcb:xinput:ModifierInfo)
   (group :initarg :group :type xcb:xinput:GroupInfo)
   (button-mask :initarg :button-mask :type xcb:-ignore)
   (button-mask~ :initform
		 '(name button-mask type xcb:CARD32 size
			(xcb:-fieldref 'buttons-len))
		 :type xcb:-list)
   (valuator-mask :initarg :valuator-mask :type xcb:-ignore)
   (valuator-mask~ :initform
		   '(name valuator-mask type xcb:CARD32 size
			  (xcb:-fieldref 'valuators-len))
		   :type xcb:-list)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:xinput:FP3232 size
		       (apply '+
			      (mapcar
			       (lambda
				 (i)
				 (eval
				  '(xcb:-popcount obj)
				  (list
				   (nconc
				    '(obj)
				    i))))
			       (slot-value obj 'valuator-mask))))
		:type xcb:-list)))

(defclass xcb:xinput:TouchUpdate
  (xcb:-event xcb:xinput:TouchBegin)
  nil)

(defclass xcb:xinput:TouchEnd
  (xcb:-event xcb:xinput:TouchBegin)
  nil)

(defconst xcb:xinput:TouchOwnershipFlags:None 0)

(defclass xcb:xinput:TouchOwnership
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (touchid :initarg :touchid :type xcb:CARD32)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (child :initarg :child :type xcb:WINDOW)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~1 :initform 8 :type xcb:-pad)))

(defclass xcb:xinput:RawTouchBegin
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (detail :initarg :detail :type xcb:CARD32)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (valuators-len :initarg :valuators-len :type xcb:CARD16)
   (flags :initarg :flags :type xcb:CARD32)
   (pad~0 :initform 4 :type xcb:-pad)
   (valuator-mask :initarg :valuator-mask :type xcb:-ignore)
   (valuator-mask~ :initform
		   '(name valuator-mask type xcb:CARD32 size
			  (xcb:-fieldref 'valuators-len))
		   :type xcb:-list)
   (axisvalues :initarg :axisvalues :type xcb:-ignore)
   (axisvalues~ :initform
		'(name axisvalues type xcb:xinput:FP3232 size
		       (apply '+
			      (mapcar
			       (lambda
				 (i)
				 (eval
				  '(xcb:-popcount obj)
				  (list
				   (nconc
				    '(obj)
				    i))))
			       (slot-value obj 'valuator-mask))))
		:type xcb:-list)
   (axisvalues-raw :initarg :axisvalues-raw :type xcb:-ignore)
   (axisvalues-raw~ :initform
		    '(name axisvalues-raw type xcb:xinput:FP3232 size
			   (apply '+
				  (mapcar
				   (lambda
				     (i)
				     (eval
				      '(xcb:-popcount obj)
				      (list
				       (nconc
					'(obj)
					i))))
				   (slot-value obj 'valuator-mask))))
		    :type xcb:-list)))

(defclass xcb:xinput:RawTouchUpdate
  (xcb:-event xcb:xinput:RawTouchBegin)
  nil)

(defclass xcb:xinput:RawTouchEnd
  (xcb:-event xcb:xinput:RawTouchBegin)
  nil)

(defconst xcb:xinput:BarrierFlags:PointerReleased 1)
(defconst xcb:xinput:BarrierFlags:DeviceIsGrabbed 2)

(defclass xcb:xinput:BarrierHit
  (xcb:-event)
  ((extension :type xcb:CARD8)
   (length :type xcb:CARD32)
   (evtype :type xcb:CARD16)
   (deviceid :initarg :deviceid :type xcb:xinput:DeviceId)
   (time :initarg :time :type xcb:TIMESTAMP)
   (eventid :initarg :eventid :type xcb:CARD32)
   (root :initarg :root :type xcb:WINDOW)
   (event :initarg :event :type xcb:WINDOW)
   (barrier :initarg :barrier :type xcb:xinput:BARRIER)
   (dtime :initarg :dtime :type xcb:CARD32)
   (flags :initarg :flags :type xcb:CARD32)
   (sourceid :initarg :sourceid :type xcb:xinput:DeviceId)
   (pad~0 :initform 2 :type xcb:-pad)
   (root-x :initarg :root-x :type xcb:xinput:FP1616)
   (root-y :initarg :root-y :type xcb:xinput:FP1616)
   (dx :initarg :dx :type xcb:xinput:FP3232)
   (dy :initarg :dy :type xcb:xinput:FP3232)))

(defclass xcb:xinput:BarrierLeave
  (xcb:-event xcb:xinput:BarrierHit)
  nil)

(defclass xcb:xinput:Device
  (xcb:-error)
  nil)

(defclass xcb:xinput:Event
  (xcb:-error)
  nil)

(defclass xcb:xinput:Mode
  (xcb:-error)
  nil)

(defclass xcb:xinput:DeviceBusy
  (xcb:-error)
  nil)

(defclass xcb:xinput:Class
  (xcb:-error)
  nil)

(defconst xcb:xinput:error-number-class-alist
  '((0 . xcb:xinput:Device)
    (1 . xcb:xinput:Event)
    (2 . xcb:xinput:Mode)
    (3 . xcb:xinput:DeviceBusy)
    (4 . xcb:xinput:Class))
  "(error-number . error-class) alist")

(defconst xcb:xinput:event-number-class-alist
  '((0 . xcb:xinput:DeviceValuator)
    (1 . xcb:xinput:DeviceKeyPress)
    (2 . xcb:xinput:DeviceKeyRelease)
    (3 . xcb:xinput:DeviceButtonPress)
    (4 . xcb:xinput:DeviceButtonRelease)
    (5 . xcb:xinput:DeviceMotionNotify)
    (6 . xcb:xinput:DeviceFocusIn)
    (7 . xcb:xinput:DeviceFocusOut)
    (8 . xcb:xinput:ProximityIn)
    (9 . xcb:xinput:ProximityOut)
    (10 . xcb:xinput:DeviceStateNotify)
    (11 . xcb:xinput:DeviceMappingNotify)
    (12 . xcb:xinput:ChangeDeviceNotify)
    (13 . xcb:xinput:DeviceKeyStateNotify)
    (14 . xcb:xinput:DeviceButtonStateNotify)
    (15 . xcb:xinput:DevicePresenceNotify)
    (16 . xcb:xinput:DevicePropertyNotify)
    (1 . xcb:xinput:DeviceChanged)
    (2 . xcb:xinput:KeyPress)
    (3 . xcb:xinput:KeyRelease)
    (4 . xcb:xinput:ButtonPress)
    (5 . xcb:xinput:ButtonRelease)
    (6 . xcb:xinput:Motion)
    (7 . xcb:xinput:Enter)
    (8 . xcb:xinput:Leave)
    (9 . xcb:xinput:FocusIn)
    (10 . xcb:xinput:FocusOut)
    (11 . xcb:xinput:Hierarchy)
    (12 . xcb:xinput:Property)
    (13 . xcb:xinput:RawKeyPress)
    (14 . xcb:xinput:RawKeyRelease)
    (15 . xcb:xinput:RawButtonPress)
    (16 . xcb:xinput:RawButtonRelease)
    (17 . xcb:xinput:RawMotion)
    (18 . xcb:xinput:TouchBegin)
    (19 . xcb:xinput:TouchUpdate)
    (20 . xcb:xinput:TouchEnd)
    (21 . xcb:xinput:TouchOwnership)
    (22 . xcb:xinput:RawTouchBegin)
    (23 . xcb:xinput:RawTouchUpdate)
    (24 . xcb:xinput:RawTouchEnd)
    (25 . xcb:xinput:BarrierHit)
    (26 . xcb:xinput:BarrierLeave))
  "(event-number . event-class) alist")



(provide 'xcb-xinput)
