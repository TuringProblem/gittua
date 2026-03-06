open Ansi

  let display_logo () =
    print_endline (cyan ^ bold ^ "
   ____            __________ ____     ___      _      
  6MMMMb/ 68b      MMMMMMMMMM `MM'     `M'     dM.     
 8P    YM Y89   /  /   MM   \  MM       M     ,MMb     
6M      Y ___  /M      MM      MM       M     d'YM.    
MM        `MM /MMMMM   MM      MM       M    ,P `Mb    
MM         MM  MM      MM      MM       M    d'  YM.   
MM     ___ MM  MM      MM      MM       M   ,P   `Mb   
MM     `M' MM  MM      MM      MM       M   d'    YM.  
YM      M  MM  MM      MM      YM       M  ,MMMMMMMMb  
 8b    d9  MM  YM.  ,  MM       8b     d8  d'      YM. 
  YMMMM9  _MM_  YMMM9 _MM_       YMMMMM9 _dM_     _dMM_
----------------------------------------------------------
    - Meticulously Crafted by @Override and Jakub -
        " ^ reset);

    print_endline (magenta ^ "  Git [T]erminal [U]ser [A]pplication {SPIT ON THAT THANG!!}" ^ reset)

let display_progress msg = 
  print_string (msg ^ " ");
  for _ = 0 to 20 do
    print_string (green ^ "█" ^ reset);
    flush stdout;
  done;
  print_endline ""

let display_menu () =
  print_endline (bold ^ "\n╭───── Available Commands ─────╮" ^ reset);
  print_endline (cyan ^ " cl " ^ reset ^ "- Clone Repository");
  print_endline (cyan ^ " rugPull " ^ reset ^ "- Update Repo");
  print_endline (cyan ^ " s " ^ reset ^ "- Show Status");
  print_endline (cyan ^ " b " ^ reset ^ "- Branch Management");
  print_endline (red ^ " q " ^ reset ^ "- Quit");
  print_endline (bold ^ "╰──────────────────────────────╯" ^ reset)

