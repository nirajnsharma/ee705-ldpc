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
    
   component std_latch
      port(d, g : in std_logic;
           q : out std_logic);
   end component;
    

