--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  External Interrupt Line

pragma Restrictions (No_Elaboration_Code);

with Ada.Synchronous_Task_Control;

with A0B.Callbacks;
with A0B.Time;

package A0B.EXTI
  with Preelaborate
is

   type External_Interrupt_Line is limited interface;

   not overriding procedure Enable_Interrupt
     (Self : in out External_Interrupt_Line) is abstract;
   --  Enable external interrupt.

   not overriding procedure Disable_Interrupt
     (Self : in out External_Interrupt_Line) is abstract;
   --  Disable external interrupt.

   not overriding procedure Set_Callback
     (Self     : in out External_Interrupt_Line;
      Callback : A0B.Callbacks.Callback) is abstract;
   --  Set callback to be called on external interrupt.
   --  Callback is called by the interrupt handler.

   not overriding function Suspension_Object
     (Self : aliased in out External_Interrupt_Line)
      return not null access Ada.Synchronous_Task_Control.Suspension_Object
        is abstract;
   --  Return access to suspension object that might be used to suspend task
   --  execution till external interrupt arrived.

   procedure Suspend_Until
     (Self    : in out External_Interrupt_Line'Class;
      Timeout : A0B.Time.Duration;
      Success : out Boolean);
   --  Suspend task execution till either external interrupt arrives or
   --  timeout expires.

   procedure Suspend_Until
     (Self    : in out External_Interrupt_Line'Class;
      Timeout : A0B.Time.Time_Span;
      Success : out Boolean);
   --  Suspend task execution till either external interrupt arrives or
   --  timeout expires.

   procedure Suspend_Until
     (Self    : in out External_Interrupt_Line'Class;
      Timeout : A0B.Time.Monotonic_Time;
      Success : out Boolean);
   --  Suspend task execution till either external interrupt arrives or
   --  timeout expires.

end A0B.EXTI;
