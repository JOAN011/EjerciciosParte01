library ieee;
use ieee.std_logic_1164.all;

entity diag is
  port(clk,x: in std_logic;
      z:outstd_logic);
end diag;

architecture arq_diag of diag is
type estados is(q0,ql,q2,q3,q4);
signal edo_pres, edofut: estados;
begin
proceso1:process(edo_pres,x)begin
  case edo_presis
    when q0=>z<='O';
      if x='0'then
        edo_fut<= q4;
      else
        edo_fut<=ql;
      end if;
    when ql=>z<='0';
      if x='0'then
        edo_fut<=q4;
      else
        edo_fut<=q2;
      end if;
    when q2=>
      ifx='0'then
        edo_fut<=q4;
        z<='0';
      else
        edo_fut<=q3;
        z<='1';
      en dif;
    when q3=>z<='0';
      ifx='0'then
        edo_fut<=q3;
      else
        edo_fut<=q3;
      end if;
    when q4=>z<='0';
      ifx='0'then
        edo_fut<=q4;
      else
        edo_fut<=ql;
      end if;
  end case;
end process proceso1;
proceso2:process(clk)begin
  if(clk'event and clk='l')then
    edo_pres <= edo_fut;
  end if;
end process proceso2;
end arq_diag;
