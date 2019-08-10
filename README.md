# UITestCollection

<img src="https://create.adobe.com/content/microsites/inspire/en/2016/5/12/discover_digital_illustrator_syd_weiler_s_fascination_with_time_/_jcr_content/article-body/full_width_images_0/image1.img.jpg/1463005937888.jpg" width="600">

<h2><b>Кнопка</b></h2>

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

```swift
app.alerts.buttons["Two"].tap()
```
<details> 
  <summary>подробнее</summary>
<a href="https://ibb.co/gDThXkK"><img src="https://i.ibb.co/xMjdcxT/button-test4.gif" alt="button-test4" width="250"></a>
</details>
