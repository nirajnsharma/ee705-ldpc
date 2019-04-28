   component std_inv
      port(a : in std_logic;
           y : out std_logic);
   end component;

   component std_nand2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nand3
      port(a,b,c : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nor2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nor3
      port(a,b,c : in std_logic;
           y : out std_logic);
   end component;
    
   component std_aoi
      port(a,b,c : in std_logic;
           y : out std_logic);
   end component;
    
   component std_latch
      port(d, g : in std_logic;
           q : out std_logic);
   end component;
    

