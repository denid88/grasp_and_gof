/// Indirection (Dependency inversion)
/// Необхідно розподілити обов'язки між об'єктами, уникнувши прямого зв'язування.
/// Для цього можна присвоїти обов'язки щодо забезпечення зв'язку між
/// компонентами або службами проміжному об'єкту.

/// Має на увазі таке: будь-який об'єкт у коді необхідно викликати через його
/// інтерфейс (той самий проміжний об'єкт).

/// Indirection є найключовішим шаблоном із перелічених у цій статті.
/// По-перше, він дуже простий з точки зору забезпечення. По-друге,
/// він надає коду величезну гнучкість, не будучи передчасною оптимізацією з
/// огляду на перший пункт. Якщо всі класи викликають один одного через
/// інтерфейси, то це призводить до можливості "видерти" будь-який шматок із
/// системи і перевикористати його в іншому місці. Ба більше, застосування
/// Indirection'а дає змогу додати практично будь-який шаблон банди чотирьох
/// особливо не напружуючись або здійснити рефакторинг класів.