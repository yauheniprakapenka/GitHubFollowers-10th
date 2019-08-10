# UITestCollection

<h2><b>Кнопка</b></h2>

<b>1. Нажать на кнопку по идентификатору</b>
```swift
app.buttons["ButtonWithID"].tap()
```

<details> 
  <summary>Настроить </summary>
   В Storyboard выбрать нужную кнопку > Identity inspector > Для Accessibility установить галочку "Enabled" > В поле Identifier указать название.<br><img src="https://i.ibb.co/n12ndhD/Screenshot-2019-08-10-at-14-14-50.png" alt="Screenshot-2019-08-10-at-14-14-50" border="0">
</details>

<b>2. Нажать на кнопку без идентификатора</b>

```swift
app.buttons["Button without ID"].tap()
```

<details> 
  <summary>Настроить </summary>
Указать имя кнопки, отображаемое в интерфейсе.<br><a href="https://ibb.co/5LMtgty"><img src="https://i.ibb.co/FzxNLNM/Screenshot-2019-08-10-at-14-38-10.png" alt="Screenshot-2019-08-10-at-14-38-10" width="150"></a>
</details>
