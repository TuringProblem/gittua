(* Author { @Override } | 1/7/2025 : 11:15 *)
open Ui
open Command

let rec main_loop () =
  display_menu ();

  print_string "\n→ Enter command: ";
  let input = read_line () in

  match parse input with
  | Some Quit ->
      display_progress "Shutting down...";
      print_endline "👋 Goodbye!"
  | Some cmd ->
      Dispatcher.run cmd;
      main_loop ()
  | None ->
      print_endline "Command not found!";
      main_loop ()

let () =
  ignore (Sys.command "clear");
  display_logo ();
  main_loop ()
