# more-than-dotfiles

```
git clone https://ghproxy.com/https://github.com/fakeYanss/dotfiles.git --depth=1 ~/.dotfiles
cd ~/.dotfiles;
# run this using terminal (not iTerm, lest iTerm settings get discarded on exit)
bash bootstrap.sh
```

---

## What is dotfiles？

Dotfiles are important files that will play an integral role in your career as a software developer.

对软件开发者来说，Dotfiles 是非常重要的的文件。

## Why use dotfiles?

You spend a sufficient amount of time fine-tuning your setup. You curate configurations and settings that best suit your workflow, aesthetic, and preferences. And you end up with a development environment that helps you, personally, be more productive.

What if after all that time you spent, you now have to switch to a new, different machine? Does that mean you have to start all over again from the beginning?

How would you remember the exact settings and commands you used?

Or what if you have a second machine and you want your set up to be exactly the same on both systems?

One of the main goals of developers is to automate repetitive tasks.

Creating a dotfile repository that is source-controlled and hosted on GitHub will save you time when you want to set up a new computer and install the exact same settings you created for your previous one.

That way all your settings and preferences can be reusable and consistent on other machines.

## What does this repository do?

Automation script setup.

This project changes a number of settings and configures software on MacOS. Here is the current list:

- setup basic software and their dotfiles
  
  - git
  
  - zsh & oh my zsh
  
  - nvim
  
  - java
  
  - python
  
  - node

- setup common software
  
  - homebrew
    
    - the beginning of all things
  
  - hammonspoon
    
    - caffinate
    
    - window manager
    
    - clipboard history
    
    - wallpaper from unsplash
    
    - network speed in menubar
    
    - ......
  
  - picgo
    
    - picture bed integration and uploader

- customized function & alias
  
  - sudo passwordless
  
  - switch darkmode and lightmode
  
  - pbcopy & pbpaste
  
  - ......

- localizational for network environment in China
  
  - homebrew proxy and mirror
  
  - github proxy
  
  - npm mirror
  
  - pip mirror