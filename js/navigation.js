navHTML = `
<div class="stack">
  <div class="centre">
    <h1><a href="/index.html">Home</a></h1>
    <h3>Blog Posts</h3>
    <ul></ul>
    <h3>Web Apps</h3>
    <ul></ul>
    <h3>About Me</h3>
    <ul>
      <li><a href="/content/aboutme/cv.html">CV</a></li>
      <li><a href="/content/aboutme/mysetup.html">My Setup</a></li>
      <li><a href="/content/aboutme/books.html">Books</a></li>
      <li><a href="/content/aboutme/courses.html">Courses</a></li>
    </ul>
    <h3>External Links</h3>
    <ul>
      <li><a href="https://www.twitter.com/hcndashwood">Twitter</a></li>
      <li>
        <a href="https://www.linkedin.com/in/henry-dashwood-42497969/"
          >LinkedIn</a
        >
      </li>
      <li><a href="https://www.github.com/HenryDashwood">Github</a></li>
    </ul>
  </div>
</div>
`;

navDiv = document.querySelector(".nav");
navDiv.innerHTML = navHTML;
