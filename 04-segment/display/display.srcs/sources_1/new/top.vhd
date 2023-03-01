architecture behavioral of top is

begin

  --------------------------------------------------------------------
  -- Instance (copy) of hex_7seg entity
  --------------------------------------------------------------------

  hex2seg : entity work.hex_7seg
    port map (
      blank  => BTNC,
      hex    => SW,
      seg(6) => CA,
      seg(5) => CB,
      seg(4) => CC,
      seg(3) => CD,
      seg(2) => CE,
      seg(1) => CF,
      seg(0) => CG
    );

  -- Connect one common anode to 3.3V
  AN <= b"1111_0111";

  -- Display input value on LEDs
  LED(3 downto 0) <= SW;

--------------------------------------------------------------------
-- Experiments on your own: LED(7:4) indicators

-- Turn LED(4) on if input value is equal to 0, ie "0000"
-- LED(4) <= WRITE YOUR CODE HERE

-- Turn LED(5) on if input value is greater than "1001", ie 10, 11, 12, ...
-- LED(5) <= WRITE YOUR CODE HERE

-- Turn LED(6) on if input value is odd, ie 1, 3, 5, ...
-- LED(6) <= WRITE YOUR CODE HERE

-- Turn LED(7) on if input value is a power of two, ie 1, 2, 4, or 8
-- LED(7) <= WRITE YOUR CODE HERE

end architecture behavioral;