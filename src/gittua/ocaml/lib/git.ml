open Ui
open Ansi

let execute cmd =
  match Sys.command cmd with
    | 0 -> true
    | _ -> false

let update_repo () =
  display_progress "Fetching updates...";
  if execute "git fetch" then begin
    display_progress "Pulling changes...";
    if execute "git pull" then
      print_endline (green ^ "✓ Successfully updated!" ^ reset)
    else
      print_endline (yellow ^ "⚠ Successfully fetched, but pull failed" ^ reset)
  end else 
    print_endline (red ^ "✗ Fetch failed" ^ reset)


let clone_repo () =
  print_endline (blue ^ "Paste repository URL:" ^ reset);

  let url = read_line () in
  display_progress "Cloning...";
  if execute ("git clone " ^ url) then
    print_endline (green ^ "✓ Clone successful!" ^ reset)
  else
    print_endline (red ^ "✗ Clone failed!" ^ reset)

let show_status () =
  ignore (Sys.command "git status")

let branch_management () =
  ignore (Sys.command "git branch");
  print_endline "Enter new branch:";
  let name = read_line () in
  if name <> "" then
    ignore (Sys.command ("git checkout -b " ^ name))
