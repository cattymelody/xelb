;;; -*- lexical-binding: t -*-
;; This file was generated from `sync.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:sync:-extension-xname "SYNC")
(defconst xcb:sync:-extension-name "Sync")
(defconst xcb:sync:-major-version 3)
(defconst xcb:sync:-minor-version 1)

(require 'xcb-xproto)

(xcb:deftypealias 'xcb:sync:ALARM 'xcb:-u4)

(defconst xcb:sync:ALARMSTATE:Active 0)
(defconst xcb:sync:ALARMSTATE:Inactive 1)
(defconst xcb:sync:ALARMSTATE:Destroyed 2)

(xcb:deftypealias 'xcb:sync:COUNTER 'xcb:-u4)

(xcb:deftypealias 'xcb:sync:FENCE 'xcb:-u4)

(defconst xcb:sync:TESTTYPE:PositiveTransition 0)
(defconst xcb:sync:TESTTYPE:NegativeTransition 1)
(defconst xcb:sync:TESTTYPE:PositiveComparison 2)
(defconst xcb:sync:TESTTYPE:NegativeComparison 3)

(defconst xcb:sync:VALUETYPE:Absolute 0)
(defconst xcb:sync:VALUETYPE:Relative 1)

(defconst xcb:sync:CA:Counter 1)
(defconst xcb:sync:CA:ValueType 2)
(defconst xcb:sync:CA:Value 4)
(defconst xcb:sync:CA:TestType 8)
(defconst xcb:sync:CA:Delta 16)
(defconst xcb:sync:CA:Events 32)

(defclass xcb:sync:INT64
  (xcb:-struct)
  ((hi :initarg :hi :type xcb:INT32)
   (lo :initarg :lo :type xcb:CARD32)))

(defclass xcb:sync:SYSTEMCOUNTER
  (xcb:-struct)
  ((counter :initarg :counter :type xcb:sync:COUNTER)
   (resolution :initarg :resolution :type xcb:sync:INT64)
   (name-len :initarg :name-len :type xcb:CARD16)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:sync:TRIGGER
  (xcb:-struct)
  ((counter :initarg :counter :type xcb:sync:COUNTER)
   (wait-type :initarg :wait-type :type xcb:CARD32)
   (wait-value :initarg :wait-value :type xcb:sync:INT64)
   (test-type :initarg :test-type :type xcb:CARD32)))

(defclass xcb:sync:WAITCONDITION
  (xcb:-struct)
  ((trigger :initarg :trigger :type xcb:sync:TRIGGER)
   (event-threshold :initarg :event-threshold :type xcb:sync:INT64)))

(defclass xcb:sync:Counter
  (xcb:-error)
  ((bad-counter :initarg :bad-counter :type xcb:CARD32)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)))

(defclass xcb:sync:Alarm
  (xcb:-error)
  ((bad-alarm :initarg :bad-alarm :type xcb:CARD32)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)))

(defclass xcb:sync:Initialize
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (desired-major-version :initarg :desired-major-version :type xcb:CARD8)
   (desired-minor-version :initarg :desired-minor-version :type xcb:CARD8)))
(defclass xcb:sync:Initialize~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD8)
   (minor-version :initarg :minor-version :type xcb:CARD8)
   (pad~1 :initform 22 :type xcb:-pad)))

(defclass xcb:sync:ListSystemCounters
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)))
(defclass xcb:sync:ListSystemCounters~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (counters-len :initarg :counters-len :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (counters :initarg :counters :type xcb:-ignore)
   (counters~ :initform
	      '(name counters type xcb:sync:SYSTEMCOUNTER size
		     (xcb:-fieldref 'counters-len))
	      :type xcb:-list)))

(defclass xcb:sync:CreateCounter
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (id :initarg :id :type xcb:sync:COUNTER)
   (initial-value :initarg :initial-value :type xcb:sync:INT64)))

(defclass xcb:sync:DestroyCounter
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (counter :initarg :counter :type xcb:sync:COUNTER)))

(defclass xcb:sync:QueryCounter
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (counter :initarg :counter :type xcb:sync:COUNTER)))
(defclass xcb:sync:QueryCounter~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (counter-value :initarg :counter-value :type xcb:sync:INT64)))

(defclass xcb:sync:Await
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (wait-list :initarg :wait-list :type xcb:-ignore)
   (wait-list~ :initform
	       '(name wait-list type xcb:sync:WAITCONDITION size nil)
	       :type xcb:-list)))

(defclass xcb:sync:ChangeCounter
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (counter :initarg :counter :type xcb:sync:COUNTER)
   (amount :initarg :amount :type xcb:sync:INT64)))

(defclass xcb:sync:SetCounter
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (counter :initarg :counter :type xcb:sync:COUNTER)
   (value :initarg :value :type xcb:sync:INT64)))

(defclass xcb:sync:CreateAlarm
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (id :initarg :id :type xcb:sync:ALARM)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:sync:CA:Counter counter)
		  (xcb:sync:CA:ValueType valueType)
		  (xcb:sync:CA:Value value)
		  (xcb:sync:CA:TestType testType)
		  (xcb:sync:CA:Delta delta)
		  (xcb:sync:CA:Events events)))
	       :type xcb:-switch)
   (counter :initarg :counter :type xcb:sync:COUNTER)
   (valueType :initarg :valueType :type xcb:CARD32)
   (value :initarg :value :type xcb:sync:INT64)
   (testType :initarg :testType :type xcb:CARD32)
   (delta :initarg :delta :type xcb:sync:INT64)
   (events :initarg :events :type xcb:CARD32)))

(defclass xcb:sync:ChangeAlarm
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (id :initarg :id :type xcb:sync:ALARM)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:sync:CA:Counter counter)
		  (xcb:sync:CA:ValueType valueType)
		  (xcb:sync:CA:Value value)
		  (xcb:sync:CA:TestType testType)
		  (xcb:sync:CA:Delta delta)
		  (xcb:sync:CA:Events events)))
	       :type xcb:-switch)
   (counter :initarg :counter :type xcb:sync:COUNTER)
   (valueType :initarg :valueType :type xcb:CARD32)
   (value :initarg :value :type xcb:sync:INT64)
   (testType :initarg :testType :type xcb:CARD32)
   (delta :initarg :delta :type xcb:sync:INT64)
   (events :initarg :events :type xcb:CARD32)))

(defclass xcb:sync:DestroyAlarm
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (alarm :initarg :alarm :type xcb:sync:ALARM)))

(defclass xcb:sync:QueryAlarm
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (alarm :initarg :alarm :type xcb:sync:ALARM)))
(defclass xcb:sync:QueryAlarm~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (trigger :initarg :trigger :type xcb:sync:TRIGGER)
   (delta :initarg :delta :type xcb:sync:INT64)
   (events :initarg :events :type xcb:BOOL)
   (state :initarg :state :type xcb:CARD8)
   (pad~1 :initform 2 :type xcb:-pad)))

(defclass xcb:sync:SetPriority
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (id :initarg :id :type xcb:CARD32)
   (priority :initarg :priority :type xcb:INT32)))

(defclass xcb:sync:GetPriority
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (id :initarg :id :type xcb:CARD32)))
(defclass xcb:sync:GetPriority~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (priority :initarg :priority :type xcb:INT32)))

(defclass xcb:sync:CreateFence
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (fence :initarg :fence :type xcb:sync:FENCE)
   (initially-triggered :initarg :initially-triggered :type xcb:BOOL)))

(defclass xcb:sync:TriggerFence
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (fence :initarg :fence :type xcb:sync:FENCE)))

(defclass xcb:sync:ResetFence
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (fence :initarg :fence :type xcb:sync:FENCE)))

(defclass xcb:sync:DestroyFence
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (fence :initarg :fence :type xcb:sync:FENCE)))

(defclass xcb:sync:QueryFence
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (fence :initarg :fence :type xcb:sync:FENCE)))
(defclass xcb:sync:QueryFence~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (triggered :initarg :triggered :type xcb:BOOL)
   (pad~1 :initform 23 :type xcb:-pad)))

(defclass xcb:sync:AwaitFence
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (fence-list :initarg :fence-list :type xcb:-ignore)
   (fence-list~ :initform
		'(name fence-list type xcb:sync:FENCE size nil)
		:type xcb:-list)))

(defclass xcb:sync:CounterNotify
  (xcb:-event)
  ((kind :initarg :kind :type xcb:CARD8)
   (counter :initarg :counter :type xcb:sync:COUNTER)
   (wait-value :initarg :wait-value :type xcb:sync:INT64)
   (counter-value :initarg :counter-value :type xcb:sync:INT64)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (count :initarg :count :type xcb:CARD16)
   (destroyed :initarg :destroyed :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:sync:AlarmNotify
  (xcb:-event)
  ((kind :initarg :kind :type xcb:CARD8)
   (alarm :initarg :alarm :type xcb:sync:ALARM)
   (counter-value :initarg :counter-value :type xcb:sync:INT64)
   (alarm-value :initarg :alarm-value :type xcb:sync:INT64)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (state :initarg :state :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defconst xcb:sync:error-number-class-alist
  '((0 . xcb:sync:Counter)
    (1 . xcb:sync:Alarm))
  "(error-number . error-class) alist")

(defconst xcb:sync:event-number-class-alist
  '((0 . xcb:sync:CounterNotify)
    (1 . xcb:sync:AlarmNotify))
  "(event-number . event-class) alist")



(provide 'xcb-sync)
