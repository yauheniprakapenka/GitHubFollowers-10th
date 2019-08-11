# UITestCollection

<a href="https://imgbb.com/"><img src="https://i.ibb.co/6nbz9gB/Button.png" alt="Button" width="200"></a>

<b>1. Нажать на кнопку по идентификатору</b>
```swift
app.buttons["ButtonWithID"].tap()
```

<details> 
<summary>подробнее</summary>
В Storyboard выбрать нужную кнопку > Identity inspector > Для Accessibility установить галочку "Enabled" > В поле Identifier указать название.<br><img src="hhttps://i.ibb.co/D5JL3f6/button-test2a.gif">
</details>

<b>2. Нажать на кнопку без идентификатора</b>

```swift
app.buttons["Button without ID"].tap()
```

<details> 
<summary>подробнее</summary>
Указать имя кнопки, отображаемое в интерфейсе.<br><img src="https://i.ibb.co/PCK7085/button-test2.gif" alt="button-test2" width="250"></a>
</details>

<b>3. Нажать на первую кнопку с одинаковым названием</b>

```swift
app.buttons["Button"].firstMatch.tap()
```
<details> 
<summary>подробнее</summary>
Указать имя кнопки, отображаемое в интерфейсе.<br><img src="https://i.ibb.co/1R6F3R3/button-test3.gif" alt="button-test3" width="250"></a>
</details>

<b>4. Нажать на кнопку в Alert</b>

```swift\\
app.alerts.buttons["Two"].tap()
```
<details> 
<summary>подробнее</summary>
<a href="https://ibb.co/gDThXkK"><img src="https://i.ibb.co/xMjdcxT/button-test4.gif" alt="button-test4" width="250"></a>
</details>

<b>5. Нажать на кнопку в Navigation Bar</b>

| Icon | Code |
| --- | --- |
| <a href="https://ibb.co/yPcg2GW"><img src="https://i.ibb.co/B35Tkdq/Navigation-Camera-2x.png" alt="Navigation-Camera-2x" width="25"></a> | ```app.navigationBars.buttons["Camera"].tap() ``` |
| <a href="https://ibb.co/smCwKLB"><img src="https://i.ibb.co/YRXkcvr/Navigation-Trash-2x.png" alt="Navigation-Trash-2x" width="20"></a> | ```app.navigationBars.buttons["Delete"].tap()``` |

<details> 
<summary>подробнее</summary>
<a href="https://ibb.co/TkfjpDQ"><img src="https://i.ibb.co/SPjYWDk/button-test5.gif" alt="button-test5" width="250"></a>
</details>

<b>6. Нажать на кнопку в Activity Sheet Bar</b>

```swift
XCTAssert(app.buttons["One"].waitForExistence(timeout: 3))  // Ожидание появления кнопки
app.buttons["One"].tap()
```

<details> 
<summary>подробнее</summary>
<a href="https://ibb.co/RgdKk2L"><img src="https://i.ibb.co/GdND47g/button-test6.gif" alt="button-test6" width="250"></a>
</details>

<b>7. Нажать на кнопку в Tabbar</b>

```swift
app.tabBars.buttons["Contacts"].tap()
```

<details> 
<summary>подробнее</summary>
<a href="https://ibb.co/2tnnTjm"><img src="https://i.ibb.co/qsyyvRX/button-test7.gif" alt="button-test7" width="250"></a>
</details>

<a href="https://ibb.co/sPbJgm2"><img src="https://i.ibb.co/vBVvcwH/Multiple-Apps.png" alt="Multiple-Apps" width="420"></a>

<b>1. Несколько одинаковых приложений</b>

```swift
let app1 = XCUIApplication(bundleIdentifier: "com.yauheniprakapenka.UITestCollectionApp1")
let app2 = XCUIApplication(bundleIdentifier: "com.yauheniprakapenka.UITestCollectionApp2")
app1.launch()
app2.launch()
app1.activate()
app2.activate()
```

<details> 
<summary>подробнее</summary>  
  1. В Bundle Identifier дописать в конце, например, "App1"<br>
<a href="https://ibb.co/k0mf2Q7"><img src="https://i.ibb.co/MpB4kMv/Screenshot-2019-08-11-at-16-06-15.png" alt="Screenshot-2019-08-11-at-16-06-15" width="250"></a>

2. Запустить проект (cmd + R). Будет создана первая копия приложения.
3. В Bundle Identifier указать в конце, например, "App2"<br>

<a href="https://ibb.co/c19MGHX"><img src="https://i.ibb.co/hyNhPj1/Screenshot-2019-08-11-at-16-13-59.png" alt="Screenshot-2019-08-11-at-16-13-59" width="250"></a>

4. Запустить проект (cmd + R). Будет создана вторая копия приложения.
5. В итоге на рабочем столе создано два одинаковых приложения. Остается только создать два объекта, указав для каждого свой bundleIdentifier. 

Демонстрация:

<a href="https://ibb.co/6D1FLr9"><img src="https://i.ibb.co/F80zCmZ/Multiple-Apps-test1.gif" alt="Multiple-Apps-test1" width="250"></a>
</details>
