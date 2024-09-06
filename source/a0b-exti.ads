--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  External Interrupt Line

pragma Restrictions (No_Elaboration_Code);

with A0B.Callbacks;

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

end A0B.EXTI;
