<center>
    <img src="https://raw.githubusercontent.com/IU-Security-Club/iu-security-club.github.io/refs/heads/main/static/img/IUSEC-white2.png" style="object-fit: cover; height:300px; width: 100%;">
    <h1>IUSEC: the website</h1>
    <p>This github repo contains the <a href="http://jekyllrb.com/">jekyll</a> blog for the <a href="https://iu-security-club.github.io"><strong>IUSEC</strong> website</a>.</p>
    <br/>
</center>

> _Please note: If you're not overwhelmingly technical and the below information seems way over your head, that's okay!
> Message `@phulelouch` on [fb](https://IUSECclub.fb.com), and we'll be able to submit your contributions for you._

## How do I run this locally?

### Install Docker for your Operating System:
* [Windows](https://runnable.com/docker/install-docker-on-windows-10)
* [MacOS](https://runnable.com/docker/install-docker-on-macos)
* [Linux](https://runnable.com/docker/install-docker-on-linux)
* [Kali](https://medium.com/@airman604/installing-docker-in-kali-linux-2017-1-fbaa4d1447fe)

You may also want to install docker-compose for future Docker escapades!
* [All OS's](https://docs.docker.com/compose/install/)

### Start a local Jekyll container
(If using Windows, commands must be run in a Powershell terminal)
* Clone a local copy of the repository 

`git clone https://github.com/IUInfoSecClub/iu-security-club.github.io`

* Change directories into your newly created directory

`cd iu-security-club.github.io`

* Start a Jekyll container, mounting the current directory in the container's Jekyll directory

`docker run --rm --name localjekyll --volume="($PWD):/srv/jekyll" -p 4000:4000 -it jekyll/jekyll:4 jekyll serve --watch`

* Once you see "Server running...", browse to `http://localhost:4000` in your web browser.

### Test your changes
* You can now make changes to your local working copy and see how it will look by reloading the page.

**Known Issues:**
* "There was an error while trying to write to `/srv/jekyll/Gemfile.lock`"
    * This is caused by the local files belonging to `root`, so the container doesn't have write access once the directory is mounted.
    * Run this command and try again: `touch Gemfile.lock && chmod a+w Gemfile.lock && chmod a+w .`
* "Error response from daemon: C: drive is not shared. Please share it in Docker for Windows Settings.”
    * Right click on the "Docker" system tray > Click Settings > Shared Drives > Tick the checkbox for your Drive and hit apply!

## What should I know about if I want to contribute?

You'll probably want a bit of an understanding about [markdown](https://daringfireball.net/projects/markdown/) and its [syntax](https://daringfireball.net/projects/markdown/syntax).

Beyond that, any topic that you think might be useful for other to know about, or if you once ran into a problem and found a solution that might help someone else, then this is the perfect place to post that.

The main idea of the knowledge base is to grow together as a team.

### Types of content
At the moment we are accepting submissions for the following kinds of content:

- Articles
    - e.g: blog posts, research about a topic, writeups for a CTF or challenge.
- Cheatsheets
    - Quick reference guides to help get up to speed with a topic quickly.
- Workshops
    - Tutorial-style content that can be followed along to achieve some kind of output at the end.

Although they are **not** user-contributable, we additionally have:
- Sessions
    - Recordings of previous weekly sessions _(not all of these are available, but as many as possible are uploaded)_.

### How do I add my own content?

1. Fork and clone this repository.
2. Add your markdown file containing your content to the correct subfolder underneath `content/`.
3. Check that the correct [front matter](https://jekyllrb.com/docs/front-matter/) is applied at the top of your post.
    - At a minimum, ensure a date, title and author exists:
        ```markdown
        ---
        title: My excellent content
        date: YYYY-MM-DD
        author:
            - username
        ---
        ```
4. _OPTIONAL:_ You can create a profile page as well, by adding a `<username>.md` file to the `content/_profiles` directory.

    Set the `title` front matter of this page to be the exact same string as your author values on your content and this page will automatically update when you add more/

5. Commit your changes


