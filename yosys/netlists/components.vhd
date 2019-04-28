   component buffer1
      port(x : in std_logic;
           z : out std_logic);
   end component;

   component std_inv
      port(a : in std_logic;
           y : out std_logic);
   end component;

   component std_nand2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nor2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
   component d_ff
      port(clk, d : in std_logic;
           q : out std_logic);
   end component;
    

