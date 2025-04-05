
# Set a custom session root path. Default is `$HOME`.
session_root "~/Desktop/trials/template_trial/test_case/contact_models"  # Replace with your desired directory path.

# Create session with specified name if it does not already exist.
if initialize_session "trials"; then

  # Create a window for code editing.
  new_window "trial"
  run_cmd "nvim ."  # Launch Neovim in this window.

  # Run Zsh in the new pane.
  new_window "build"

  # Select the Neovim pane by default and maximize it.
  select_pane 0      # Select the Neovim pane.
#  resize-pane -Z      # Toggle zoom for the selected pane (makes it full screen).

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session

