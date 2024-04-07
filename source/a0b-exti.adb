--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package body A0B.EXTI is

   -------------------
   -- Suspend_Until --
   -------------------

   procedure Suspend_Until
     (Self    : in out EXTI_Pin'Class;
      Timeout : A0B.Time.Duration;
      Success : out Boolean) is
   begin
      raise Program_Error;
   end Suspend_Until;

   -------------------
   -- Suspend_Until --
   -------------------

   procedure Suspend_Until
     (Self    : in out EXTI_Pin'Class;
      Timeout : A0B.Time.Monotonic_Time;
      Success : out Boolean) is
   begin
      raise Program_Error;
   end Suspend_Until;

   -------------------
   -- Suspend_Until --
   -------------------

   procedure Suspend_Until
     (Self    : in out EXTI_Pin'Class;
      Timeout : A0B.Time.Time_Span;
      Success : out Boolean) is
   begin
      raise Program_Error;
   end Suspend_Until;

end A0B.EXTI;
