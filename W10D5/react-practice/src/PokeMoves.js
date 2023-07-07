import * as moves from "./data.js";

function PokeMoves() {
  return (
    <ul>
      {moves.map((item) => (
        <li>
          {item.id}. {item.move}
        </li>
      ))}
    </ul>
  );
}
