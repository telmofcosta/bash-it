#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" ${bold_white}[ ${normal}"
SCM_THEME_PROMPT_SUFFIX="${bold_white} ]"

SCM_GIT_DETACHED_CHAR="${bold_cyan}⌿"
SCM_GIT_AHEAD_CHAR="${bold_yellow}↑"
SCM_GIT_BEHIND_CHAR="${bold_green}↓"
SCM_GIT_UNTRACKED_CHAR="${bold_purple}?"
SCM_GIT_UNSTAGED_CHAR="${red}U"
SCM_GIT_STAGED_CHAR="${green}S"
SCM_GIT_STASH_CHAR_PREFIX="${bold_white}#"
SCM_GIT_STASH_CHAR_SUFFIX=""

RVM_THEME_PROMPT_PREFIX="v"
RVM_THEME_PROMPT_SUFFIX=""
RBENV_THEME_PROMPT_PREFIX="v"
RBENV_THEME_PROMPT_SUFFIX=""

THEME_CLOCK_FORMAT="%H:%M"

function prompt_command() {
  FIRST_LINE="${bold_cyan}[${normal}\w${bold_cyan}] ${yellow}$(ruby_version_prompt) ${bold_cyan}$(scm_prompt_char_info)${normal}"
  SECOND_LINE="${bold_blue}[${normal}$(clock_prompt)${bold_blue}]${normal} "
  PS1="\n${FIRST_LINE}\n${SECOND_LINE}"
}

safe_append_prompt_command prompt_command
