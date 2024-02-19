library IEEE;
use IEEE.STD_LOGIC_1164.all;

library gateXOr2;
use gateXOr2.all;

entity Encoder is
port (dIn	: in STD_LOGIC_VECTOR(15 downto 0);			
		dOut	: out STD_LOGIC_VECTOR(23 downto 0));		
end Encoder;

architecture Behavioural of Encoder is
	COMPONENT gateXOr2
		PORT (x0, x1: IN STD_LOGIC;
				y: OUT STD_LOGIC);
   END COMPONENT;
	
	signal remainder	:  STD_LOGIC_VECTOR(7 downto 0);
	signal porta1, porta2, porta3, porta4, porta5, porta6, porta7, porta8, porta9, porta10, porta11,
	porta12, portaa9a12, portaa8a11, portaa7a10, porta23, porta7a7, porta35, porta89, porta16, porta57,
	porta49, portaa9a12a15, porta125, portaa8a11a14, porta111, portaa7a10a5, porta210, porta310, porta894, porta5712, porta21011 : std_logic;
	
begin
	xorPorta1: gateXOr2 PORT MAP (dIn(0), dIn(2), porta1);
	xorPorta2: gateXOr2 PORT MAP (dIn(0), dIn(3), porta2);
	xorPorta3: gateXOr2 PORT MAP (dIn(1), dIn(13), porta3);
	xorPorta4: gateXOr2 PORT MAP (dIn(2), dIn(11), porta4);
	xorPorta5: gateXOr2 PORT MAP (dIn(3), dIn(6), porta5);
	xorPorta6: gateXOr2 PORT MAP (dIn(4), dIn(14), porta6);
	xorPorta7: gateXOr2 PORT MAP (dIn(5), dIn(12), porta7);
	xorPorta8: gateXOr2 PORT MAP (dIn(5), dIn(15), porta8);
	xorPorta9: gateXOr2 PORT MAP (dIn(4), dIn(7), porta9);
	xorPorta10: gateXOr2 PORT MAP (dIn(6), dIn(8), porta10);		
	xorPorta11: gateXOr2 PORT MAP (dIn(9), dIn(13), porta11);	
	xorPorta12: gateXOr2 PORT MAP (dIn(1), dIn(10), porta12);	
	xorPortaa9a12: gateXOr2 PORT MAP (dIn(9), dIn(12), portaa9a12);	
	xorPortaa8a11: gateXOr2 PORT MAP (dIn(8), dIn(11), portaa8a11);	
	xorPortaa7a10: gateXOr2 PORT MAP (dIn(7), dIn(10), portaa7a10);	

	xorPorta23: gateXOr2 PORT MAP (porta2, porta3, porta23);	
	xorPorta7a7: gateXOr2 PORT MAP (porta7, dIn(7), porta7a7);	
	xorPorta35: gateXOr2 PORT MAP (porta3, porta5, porta35);	
	xorPorta89: gateXOr2 PORT MAP (porta8, porta9, porta89);	
	xorPorta16: gateXOr2 PORT MAP (porta1, porta6, porta16);	
	xorPorta57: gateXOr2 PORT MAP (porta5, porta7, porta57);	
	xorPorta49: gateXOr2 PORT MAP (porta4, porta9, porta49);	
	xorPortaa9a12a15: gateXOr2 PORT MAP (portaa9a12, dIn(15), portaa9a12a15);	
	xorPorta125: gateXOr2 PORT MAP (porta12, porta5, porta125);
	xorPortaa8a11a14: gateXOr2 PORT MAP (portaa8a11, dIn(14), portaa8a11a14);	
	xorPorta111: gateXOr2 PORT MAP (porta1, porta11, porta111);	
	xorPortaa7a10a5: gateXOr2 PORT MAP (portaa7a10, dIn(5), portaa7a10a5);	
	xorPorta210: gateXOr2 PORT MAP (porta2, porta10, porta210);	
	xorPorta310: gateXOr2 PORT MAP (porta3, porta10, porta310);	
	
	
	xorPorta894: gateXOr2 PORT MAP (porta89, porta4, porta894);
	xorPorta5712: gateXOr2 PORT MAP (porta57, porta12, porta5712);	
	xorPorta21011: gateXOr2 PORT MAP (porta210, porta11, porta21011);	
	
	xorRemainder0: gateXOr2 PORT MAP (porta16, porta310, remainder(0));
	xorRemainder1: gateXOr2 PORT MAP (porta89, porta21011, remainder(1));
	xorRemainder2: gateXOr2 PORT MAP (porta111, portaa7a10a5, remainder(2));
	xorRemainder3: gateXOr2 PORT MAP (porta125, portaa8a11a14, remainder(3));
	xorRemainder4: gateXOr2 PORT MAP (porta49, portaa9a12a15, remainder(4));
	xorRemainder5: gateXOr2 PORT MAP (porta16, porta5712, remainder(5));
	xorRemainder6: gateXOr2 PORT MAP (porta35, porta894, remainder(6));
	xorRemainder7: gateXOr2 PORT MAP (porta23, porta7a7, remainder(7));
	
	
		
	dOut(7 downto 0) <= remainder;
	dOut(23 downto 8) <= dIn;
end Behavioural;