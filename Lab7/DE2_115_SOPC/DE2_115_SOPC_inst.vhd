	component DE2_115_SOPC is
		port (
			clk_clk                            : in  std_logic                    := 'X'; -- clk
			reset_reset_n                      : in  std_logic                    := 'X'; -- reset_n
			pio_led_external_connection_export : out std_logic_vector(7 downto 0)         -- export
		);
	end component DE2_115_SOPC;

	u0 : component DE2_115_SOPC
		port map (
			clk_clk                            => CONNECTED_TO_clk_clk,                            --                         clk.clk
			reset_reset_n                      => CONNECTED_TO_reset_reset_n,                      --                       reset.reset_n
			pio_led_external_connection_export => CONNECTED_TO_pio_led_external_connection_export  -- pio_led_external_connection.export
		);

