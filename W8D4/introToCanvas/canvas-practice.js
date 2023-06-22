document.addEventListener("DOMContentLoaded", function() {
  // Your code here
  const canvas = document.getElementById("myCanvas");
  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "red";
  ctx.fillRect(10, 10, 400, 100);
  ctx.beginPath();
  ctx.arc(100, 75, 50, 0, 2 * Math.PI);
  ctx.strokeStyle = "blue";
  ctx.stroke();
  ctx.fillStyle = "green"
  ctx.fill();
});

// ctx.fillStyle("red");
// ctx.fillRect(100, 50, 50, 100);