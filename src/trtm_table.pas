unit trtm_table;

interface

uses trtm_types;

Var
  trtm_main_table  : TTRTM_Table;
  trtm_methods_txt : TTRTM_Methods_Text;

implementation

initialization

trtm_methods_txt[1].mname     := 'Прием  ДРОБЛЕНИЯ';
trtm_methods_txt[1].mexample1 := 'а) Разделить объект на независимые части.' + #13#10 + 'б) Выполнить объект разборным.' + #13#10 + 'в) Увеличить степень дробления объекта.';
trtm_methods_txt[1].mexample2 := '';

trtm_methods_txt[2].mname     := 'Прием   ВЫНЕСЕНИЯ';
trtm_methods_txt[2].mexample1 := 'Отделить от объекта "мешающую" часть (свойство) или, наоборот, выделить единственную нужную часть (свойство).';
trtm_methods_txt[2].mexample2 := '';

trtm_methods_txt[3].mname     := 'Прием   МЕСТНОГО   КАЧЕСТВА';
trtm_methods_txt[3].mexample1 := 'а) Перейти от однородной структуры объекта (среды, воздействия) к неоднородной.' + #13#10 + 'б) Разные части объекта должны иметь разные функции.' + #13#10 + 'в) Каждая часть объекта должна находиться в условиях, наиболее соответствующих ее работе.';
trtm_methods_txt[3].mexample2 := '';

trtm_methods_txt[4].mname     := 'Прием  АСИММЕТРИИ';
trtm_methods_txt[4].mexample1 := 'а) Перейти от симметричной формы объекта к асимметричной.' + #13#10 + 'б) Если объект уже ассиметричен, увеличить степень асимметрии.';
trtm_methods_txt[4].mexample2 := '';

trtm_methods_txt[5].mname     := 'Прием   ОБЪЕДИНЕНИЯ';
trtm_methods_txt[5].mexample1 := 'а) Соединить однородные или предназначенные для смежных операций объекты.' + #13#10 + 'б) Объединить во времени однородные или смежные операции.';
trtm_methods_txt[5].mexample2 := '';

trtm_methods_txt[6].mname     := 'Прием УНИВЕРСАЛЬНОСТИ';
trtm_methods_txt[6].mexample1 := 'Сделать объект выполняющим несколько разных функций, чтобы отпала необходимость в других объектах.';
trtm_methods_txt[6].mexample2 := '';

trtm_methods_txt[7].mname     := 'Прием   МАТРЕШКИ';
trtm_methods_txt[7].mexample1 := 'а) один объект размещен внутри другого объекта, который, в свою очередь, находится внутри третьего, и т.д.' + #13#10 + 'б) Один объект проходит сквозь полость в другом объекте.';
trtm_methods_txt[7].mexample2 := '';

trtm_methods_txt[8].mname     := 'Прием  АНТИВЕСА';
trtm_methods_txt[8].mexample1 := 'а) Компенсировать вес объекта соединением с другими объектами, обладающими подъемной силой.' + #13#10 + 'б) Компенсировать вес объекта взаимодействием со средой (аэро-, гидро- и т.п. силы).';
trtm_methods_txt[8].mexample2 := '';

trtm_methods_txt[9].mname     := 'Прием  ПРЕДВАРИТЕЛЬНОГО АНТИДЕЙСТВИЯ';
trtm_methods_txt[9].mexample1 := 'Если по условиям задачи необходимо совершать какое-то действие, надо заранее совершить антидействие.';
trtm_methods_txt[9].mexample2 := '';

trtm_methods_txt[10].mname     := 'Прием  ПРЕДВАРИТЕЛЬНОГО  ДЕЙСТВИЯ';
trtm_methods_txt[10].mexample1 := 'а) Заранее выполнить требуемое действие(полностью или частично).' + #13#10 + 'б) Заранее расставить объекты так, чтобы они могли вступить в действие без затрат времени на их доставку и с наиболее удобного места.';
trtm_methods_txt[10].mexample2 := '';

trtm_methods_txt[11].mname     := 'Прием   ЗАРАНЕЕ  ПОДЛОЖЕННОЙ   ПОДУШКИ';
trtm_methods_txt[11].mexample1 := 'Компенсировать относительно невысокую надежность объекта заранее подготовленными аварийными средствами.';
trtm_methods_txt[11].mexample2 := '';

trtm_methods_txt[12].mname     := 'Прием ЭКВИПОТЕНЦИАЛЬНОСТИ';
trtm_methods_txt[12].mexample1 := 'Изменить условия работы так, чтобы не приходилось поднимать или отпускать объект.';
trtm_methods_txt[12].mexample2 := '';

trtm_methods_txt[13].mname     := 'Прием "НАОБОРОТ"';
trtm_methods_txt[13].mexample1 := 'а) Вместо действия, диктуемого условиями задачи, осуществить обратное действие.' + #13#10 + 'б) Сделать движущуюся часть объекта (среды) неподвижной, а неподвижную - движущейся.' + #13#10 + 'в) Повернуть объект "вверх ногами", вывернуть его.';
trtm_methods_txt[13].mexample2 := '';

trtm_methods_txt[14].mname     := 'Прием СФЕРОИДАЛЬНОСТИ';
trtm_methods_txt[14].mexample1 := 'а) Перейти от прямолинейных частей объекта к криволинейным; от плоских поверхностей к сферическим; от частей, выполненных и виде куба или параллелепипеда, к шаровым конструкциям.' + #13#10 + 'б) Использовать ролики, шары, спирали.' + #13#10 + 'в) Перейти от  прямолинейного движения к вращательному, использовать центробежную силу.';
trtm_methods_txt[14].mexample2 := '';

trtm_methods_txt[15].mname     := 'Прием  ДИНАМИЧНОСТИ';
trtm_methods_txt[15].mexample1 := 'а) Характеристики объекта (среды) должны меняться так, чтобы быть оптимальными на каждом этапе работы.' + #13#10 + 'б) Разделить объект на части, способные перемещаться относительно друг друга.' + #13#10 + 'в) Если объект в целом неподвижен, сделать его подвижным, перемещающимся.';
trtm_methods_txt[15].mexample2 := '';

trtm_methods_txt[16].mname     := 'Прием  ЧАСТИЧНОГО ИЛИ  ИЗБЫТОЧНОГО  РЕШЕНИЯ';
trtm_methods_txt[16].mexample1 := 'Если трудно получить  100% требуемого эффекта, надо получить "чуть больше" или "чуть меньше" для упрощения задачи.';
trtm_methods_txt[16].mexample2 := '';

trtm_methods_txt[17].mname     := 'Прием ПЕРЕХОДА  В  ДРУГОЕ  ИЗМЕРЕНИЕ';
trtm_methods_txt[17].mexample1 := 'а) Трудности, связанные с движением (или размещением) объекта по линии, устраняются, если объект приобретает возможность перемещаться (размещаться) в двух измерениях (по плоскости) и, далее, в трех измерениях (в  объеме).' + #13#10 + 'б) Использовать многоэтажную компоновку объектов вместо одноэтажной.' + #13#10 + 'в) Наклонить объект или положить его "набок".' + #13#10 + 'г) Использовать обратную сторону данной площади.' + #13#10 + 'д) Использовать оптические потоки, падающие на соседнюю площадь или обратную сторону ' + 'имеющейся площади. Прием 17а ' + 'можно объединить с приемами 7 и 15в. Получается цепь, характеризующая ' + 'общую тенденцию развития технических систем: от точки к линии, затем к плоскости, ' + 'потом к объему и, наконец, к совмещению многих объектов.';
trtm_methods_txt[17].mexample2 := '';

trtm_methods_txt[18].mname     := 'Прием ИСПОЛЬЗОВАНИЯ МЕХАНИЧЕСКИХ КОЛЕБАНИЙ';
trtm_methods_txt[18].mexample1 := 'а) Привести объект в колебательное движение.' + #13#10 + 'б) Если такое движение уже совершается - увеличить его частоту (вплоть до УЗ).' + #13#10 + 'в) Использовать резонансную частоту.' + #13#10 + 'г) Применить вместо механических вибраторов пьезовибраторы.' + #13#10 + 'д) Использовать УЗ-колебания в сочетании с электромагнитными полями.';
trtm_methods_txt[18].mexample2 := '';

trtm_methods_txt[19].mname     := 'Прием ПЕРИОДИЧЕСКОГО ДЕЙСТВИЯ';
trtm_methods_txt[19].mexample1 := 'а) Перейти от непрерывного действия к периодическому (импульсному).' + #13#10 + 'б) Если действие уже осуществляется периодически - изменить периодичность.' + #13#10 + 'в) Использовать паузы между импульсами для другого действия.';
trtm_methods_txt[19].mexample2 := '';

trtm_methods_txt[20].mname     := 'Прием  НЕПРЕРЫВНОСТИ  ПОЛЕЗНОГО  ДЕЙСТВИЯ';
trtm_methods_txt[20].mexample1 := 'а) Вести работу непрерывно (все части объекта должны все время работать с полной нагрузкой).' + #13#10 + 'б) Устранить холостые и промежуточные ходы.';
trtm_methods_txt[20].mexample2 := '';

trtm_methods_txt[21].mname     := 'Прием  ПРОСКОКА';
trtm_methods_txt[21].mexample1 := 'Преодолеть вредные или опасные стадии процесса на большой скорости.';
trtm_methods_txt[21].mexample2 := '';

trtm_methods_txt[22].mname     := 'Прием "ОБРАТИТЬ ВРЕД В ПОЛЬЗУ"';
trtm_methods_txt[22].mexample1 := 'а) Использовать вредные факторы (воздействие) для получения положительного эффекта.' + #13#10 + 'б) Устранить вредный фактор за счет сложения с другим вредным фактором.' + #13#10 + 'в) Усилить вредный фактор до такой степени, чтобы он перестал быть вредным.';
trtm_methods_txt[22].mexample2 := '';

trtm_methods_txt[23].mname     := 'Прием ОБРАТНОЙ СВЯЗИ';
trtm_methods_txt[23].mexample1 := 'а) Ввести обратную связь.' + #13#10 + 'б) Если обратная связь есть - изменить ее.';
trtm_methods_txt[23].mexample2 := '';

trtm_methods_txt[24].mname     := 'Прием  ПОСРЕДНИКА';
trtm_methods_txt[24].mexample1 := 'а) Использовать промежуточный объект, переносящий или передающий действие.' + #13#10 + 'б) На время присоединить к объекту другой (легкоудалимый) объект.';
trtm_methods_txt[24].mexample2 := '';

trtm_methods_txt[25].mname     := 'Прием САМООБСЛУЖИВАНИЯ';
trtm_methods_txt[25].mexample1 := 'а) Объект должен сам обслуживать себя, выполняя вспомогательные операции.' + #13#10 + 'б) Использовать отходы (вещества, энергии).';
trtm_methods_txt[25].mexample2 := '';

trtm_methods_txt[26].mname     := 'Прием  КОПИРОВАНИЯ';
trtm_methods_txt[26].mexample1 := 'а) Вместо недоступного, сложного, дорогостоящего, неудобного или хрупкого объекта использовать его упрощенные и дешевые копии.' + #13#10 + 'б) Заменить объект или систему объектов их оптическими копиями (изображениями); использовать при этом изменение масштаба.' + #13#10 + 'в) Если нельзя использовать видимые оптические копии, перейти к ИК и УФ.';
trtm_methods_txt[26].mexample2 := '';

trtm_methods_txt[27].mname     := 'Прием ЗАМЕНЫ ДОРОГОЙ ДОЛГОВЕЧНОСТИ НА ДЕШЕВУЮ НЕДОЛГОВЕЧНОСТЬ';
trtm_methods_txt[27].mexample1 := 'Заменить дорогой объект набором дешевых объектов, поступившись при этом некоторыми качествами (например, долговечностью).';
trtm_methods_txt[27].mexample2 := '';

trtm_methods_txt[28].mname     := 'Прием  ЗАМЕНЫ  МЕХАНИЧЕСКОЙ  СИСТЕМЫ';
trtm_methods_txt[28].mexample1 := 'а) Заменить механическую схему электрической, оптической, тепловой, акустической или "запаховой".' + #13#10 + 'б) Использовать электрические, магнитные и электромагнитные поля для взаимодействия с объектом.' + #13#10 + 'в) Перейти от неподвижных полей к движущимся, от фиксированных к меняющимся во времени, от неструктурных к имеющим определенную структуру.' + #13#10 + 'г) Использовать поля в сочетании с ферромагнитными частицами.';
trtm_methods_txt[28].mexample2 := '';

trtm_methods_txt[29].mname     := 'Прием ИСПОЛЬЗОВАНИЯ  ПНЕВМО-  И  ГИДРОКОНСТРУКЦИЙ';
trtm_methods_txt[29].mexample1 := 'Вместо твердых частей объекта использовать газообразные и жидкие: надувные и гидронаполняемые, воздушные подушки, гидростатические и гидрореактивные.';
trtm_methods_txt[29].mexample2 := '';

trtm_methods_txt[30].mname     := 'Прием   ИСПОЛЬЗОВАНИЯ   ГИБКИХ  ОБОЛОЧЕК';
trtm_methods_txt[30].mexample1 := 'а) Вместо объемных конструкций использовать гибкие оболочки и пленки.' + #13#10 + 'б) Изолировать объект от внешней среды при помощи гибких оболочек и тонких пленок.';
trtm_methods_txt[30].mexample2 := '';

trtm_methods_txt[31].mname     := 'Прием  ИСПОЛЬЗОВАНИЯ  ПОРИСТЫХ  МАТЕРИАЛОВ';
trtm_methods_txt[31].mexample1 := 'а) Выполнить объем пористым или использовать дополнительные пористые элементы (вставки, покрытия и т.п.).' + #13#10 + 'б) Если объект уже выполнен пористым, предварительно заполнить поры каким-нибудь веществом.';
trtm_methods_txt[31].mexample2 := '';

trtm_methods_txt[32].mname     := 'Прием ИЗМЕНЕНИЯ ОКРАСКИ';
trtm_methods_txt[32].mexample1 := 'а) Изменить окраску объекта или внешней среды.' + #13#10 + 'б) Изменить степень прозрачности объекта или внешней среды.' + #13#10 + 'в) Для наблюдения за плохо видимыми объектами или процессами использовать красящие добавки.' + #13#10 + 'г) Если такие добавки уже применяются, использовать люминофоры, меченые атомы.';
trtm_methods_txt[32].mexample2 := '';

trtm_methods_txt[33].mname     := 'Прием ОДНОРОДНОСТИ';
trtm_methods_txt[33].mexample1 := 'Объекты, взаимодействующие с данным объектом, должны быть, сделаны из того же материала (или близкого ему по свойствам).';
trtm_methods_txt[33].mexample2 := '';

trtm_methods_txt[34].mname     := 'Прием ОТБРОСА  И/ИЛИ   РЕГЕНЕРАЦИИ  ЧАСТЕЙ';
trtm_methods_txt[34].mexample1 := 'а) Выполнившая свое назначение и ставшая ненужной часть объекта должна быть отброшена (растворена, испарена и т.п.) или видоизменена непосредственно в ходе работы.' + #13#10 + 'б) Расходуемые части объекта должны быть восстановлены непосредственно в ходе работы.';
trtm_methods_txt[34].mexample2 := '';

trtm_methods_txt[35].mname     := 'Прием ИЗМЕНЕНИЯ  АГРЕГАТНОГО  СОСТОЯНИЯ  ОБЪЕКТА';
trtm_methods_txt[35].mexample1 := 'Сюда входят не только простые переходы, например, от твердого состояния к жидкому, но и переходы к "псевдосостояниям" ("псевдожидкость") и промежуточным состояниям, например, использование эластичных твердых тел.';
trtm_methods_txt[35].mexample2 := '';

trtm_methods_txt[36].mname     := 'Прием ИСПОЛЬЗОВАНИЯ  ФАЗОВЫХ  ПЕРЕХОДОВ';
trtm_methods_txt[36].mexample1 := 'Использовать влияния, возникающие при фазовых переходах, например изменение объема, выделение или поглощение тепла и т.п.';
trtm_methods_txt[36].mexample2 := '';

trtm_methods_txt[37].mname     := 'Прием ИСПОЛЬЗОВАНИЯ ТЕРМИЧЕСКОГО РАСШИРЕНИЯ';
trtm_methods_txt[37].mexample1 := 'а) Использовать термическое расширение или сжатие материалов.' + #13#10 + 'б) Если термическое расширение уже используется, применить нисколько материалов с разными коэффициентами термического расширения.';
trtm_methods_txt[37].mexample2 := '';

trtm_methods_txt[38].mname     := 'Прием  ИСПОЛЬЗОВАНИЯ  СИЛЬНЫХ  ОКИСЛИТЕЛЕЙ';
trtm_methods_txt[38].mexample1 := 'а) Заменить обычный воздух обогащенным.' + #13#10 + 'б) Заменить обогащенный воздух кислородом.' + #13#10 + 'в) Воздействовать на воздух или кислород ионизирующими излучениями.' + #13#10 + 'г) Использовать озонированный кислород.' + #13#10 + 'д) Заменить озонированный (или ионизированный) кислород озоном';
trtm_methods_txt[38].mexample2 := '';

trtm_methods_txt[39].mname     := 'Прием ИСПОЛЬЗОВАНИЯ  ИНЕРТНОЙ СРЕДЫ';
trtm_methods_txt[39].mexample1 := 'а) Заменить обычную среду нейтральной.' + #13#10 + 'б) Ввести в объект нейтральные части, добавки и т.п.' + #13#10 + 'в) Проводить процесс в вакууме.';
trtm_methods_txt[39].mexample2 := '';

trtm_methods_txt[40].mname     := 'Прием ИСПОЛЬЗОВАНИЯ КОМПОЗИЦИОННЫХ МАТЕРИАЛОВ';
trtm_methods_txt[40].mexample1 := 'Перейти от однородных материалов к композиционным.';
trtm_methods_txt[40].mexample2 := '';


trtm_main_table[1].id         := 1;
trtm_main_table[1].desc       := 'Вес подвижного объекта';


trtm_main_table[1].sol[1][1]  := 0;
trtm_main_table[1].sol[1][2]  := 0;
trtm_main_table[1].sol[1][3]  := 0;
trtm_main_table[1].sol[1][4]  := 0;

trtm_main_table[1].sol[2][1]  := 0;
trtm_main_table[1].sol[2][2]  := 0;
trtm_main_table[1].sol[2][3]  := 0;
trtm_main_table[1].sol[2][4]  := 0;

trtm_main_table[1].sol[3][1]  := 15;
trtm_main_table[1].sol[3][2]  := 8 ;
trtm_main_table[1].sol[3][3]  := 29;
trtm_main_table[1].sol[3][4]  := 34;

trtm_main_table[1].sol[4][1]  := 0 ;
trtm_main_table[1].sol[4][2]  := 0 ;
trtm_main_table[1].sol[4][3]  := 0 ;
trtm_main_table[1].sol[4][4]  := 0 ;

trtm_main_table[1].sol[5][1]  := 29;
trtm_main_table[1].sol[5][2]  := 17;
trtm_main_table[1].sol[5][3]  := 38;
trtm_main_table[1].sol[5][4]  := 34;

trtm_main_table[1].sol[6][1]  := 0 ;
trtm_main_table[1].sol[6][2]  := 0 ;
trtm_main_table[1].sol[6][3]  := 0 ;
trtm_main_table[1].sol[6][4]  := 0 ;

trtm_main_table[1].sol[7][1]  := 29;
trtm_main_table[1].sol[7][2]  := 2 ;
trtm_main_table[1].sol[7][3]  := 40;
trtm_main_table[1].sol[7][4]  := 28;

trtm_main_table[1].sol[8][1]  := 0 ;
trtm_main_table[1].sol[8][2]  := 0 ;
trtm_main_table[1].sol[8][3]  := 0 ;
trtm_main_table[1].sol[8][4]  := 0 ;

trtm_main_table[1].sol[9][1]  := 2 ;
trtm_main_table[1].sol[9][2]  := 8 ;
trtm_main_table[1].sol[9][3]  := 15;
trtm_main_table[1].sol[9][4]  := 38;

trtm_main_table[1].sol[10][1]  := 8 ;
trtm_main_table[1].sol[10][2]  := 10;
trtm_main_table[1].sol[10][3]  := 18;
trtm_main_table[1].sol[10][4]  := 37;

trtm_main_table[1].sol[11][1]  := 10;
trtm_main_table[1].sol[11][2]  := 36;
trtm_main_table[1].sol[11][3]  := 37;
trtm_main_table[1].sol[11][4]  := 40;

trtm_main_table[1].sol[12][1]  := 10;
trtm_main_table[1].sol[12][2]  := 14;
trtm_main_table[1].sol[12][3]  := 35;
trtm_main_table[1].sol[12][4]  := 40;

trtm_main_table[1].sol[13][1]  := 1 ;
trtm_main_table[1].sol[13][2]  := 35;
trtm_main_table[1].sol[13][3]  := 19;
trtm_main_table[1].sol[13][4]  := 39;

trtm_main_table[1].sol[14][1]  := 28;
trtm_main_table[1].sol[14][2]  := 27;
trtm_main_table[1].sol[14][3]  := 18;
trtm_main_table[1].sol[14][4]  := 40;

trtm_main_table[1].sol[15][1]  := 5 ;
trtm_main_table[1].sol[15][2]  := 34;
trtm_main_table[1].sol[15][3]  := 31;
trtm_main_table[1].sol[15][4]  := 35;

trtm_main_table[1].sol[16][1]  := 0 ;
trtm_main_table[1].sol[16][2]  := 0 ;
trtm_main_table[1].sol[16][3]  := 0 ;
trtm_main_table[1].sol[16][4]  := 0 ;

trtm_main_table[1].sol[17][1]  := 6 ;
trtm_main_table[1].sol[17][2]  := 29;
trtm_main_table[1].sol[17][3]  := 4 ;
trtm_main_table[1].sol[17][4]  := 38;

trtm_main_table[1].sol[18][1]  := 19;
trtm_main_table[1].sol[18][2]  := 1 ;
trtm_main_table[1].sol[18][3]  := 32;
trtm_main_table[1].sol[18][4]  := 0 ;

trtm_main_table[1].sol[19][1]  := 35;
trtm_main_table[1].sol[19][2]  := 12;
trtm_main_table[1].sol[19][3]  := 34;
trtm_main_table[1].sol[19][4]  := 31;

trtm_main_table[1].sol[20][1]  := 0 ;
trtm_main_table[1].sol[20][2]  := 0 ;
trtm_main_table[1].sol[20][3]  := 0 ;
trtm_main_table[1].sol[20][4]  := 0 ;

trtm_main_table[1].sol[21][1]  := 12;
trtm_main_table[1].sol[21][2]  := 36;
trtm_main_table[1].sol[21][3]  := 18;
trtm_main_table[1].sol[21][4]  := 31;

trtm_main_table[1].sol[22][1]  := 6 ;
trtm_main_table[1].sol[22][2]  := 2 ;
trtm_main_table[1].sol[22][3]  := 34;
trtm_main_table[1].sol[22][4]  := 19;

trtm_main_table[1].sol[23][1]  := 5 ;
trtm_main_table[1].sol[23][2]  := 35;
trtm_main_table[1].sol[23][3]  := 3 ;
trtm_main_table[1].sol[23][4]  := 31;

trtm_main_table[1].sol[24][1]  := 10;
trtm_main_table[1].sol[24][2]  := 24;
trtm_main_table[1].sol[24][3]  := 35;
trtm_main_table[1].sol[24][4]  := 0 ;

trtm_main_table[1].sol[25][1]  := 10;
trtm_main_table[1].sol[25][2]  := 35;
trtm_main_table[1].sol[25][3]  := 20;
trtm_main_table[1].sol[25][4]  := 28;

trtm_main_table[1].sol[26][1]  := 3 ;
trtm_main_table[1].sol[26][2]  := 26;
trtm_main_table[1].sol[26][3]  := 18;
trtm_main_table[1].sol[26][4]  := 31;

trtm_main_table[1].sol[27][1]  := 3 ;
trtm_main_table[1].sol[27][2]  := 11;
trtm_main_table[1].sol[27][3]  := 1 ;
trtm_main_table[1].sol[27][4]  := 27;

trtm_main_table[1].sol[28][1]  := 28;
trtm_main_table[1].sol[28][2]  := 27;
trtm_main_table[1].sol[28][3]  := 35;
trtm_main_table[1].sol[28][4]  := 26;

trtm_main_table[1].sol[29][1]  := 28;
trtm_main_table[1].sol[29][2]  := 35;
trtm_main_table[1].sol[29][3]  := 26;
trtm_main_table[1].sol[29][4]  := 18;

trtm_main_table[1].sol[30][1]  := 22;
trtm_main_table[1].sol[30][2]  := 21;
trtm_main_table[1].sol[30][3]  := 18;
trtm_main_table[1].sol[30][4]  := 27;

trtm_main_table[1].sol[31][1]  := 22;
trtm_main_table[1].sol[31][2]  := 35;
trtm_main_table[1].sol[31][3]  := 31;
trtm_main_table[1].sol[31][4]  := 39;

trtm_main_table[1].sol[32][1]  := 27;
trtm_main_table[1].sol[32][2]  := 28;
trtm_main_table[1].sol[32][3]  := 1 ;
trtm_main_table[1].sol[32][4]  := 36;

trtm_main_table[1].sol[33][1]  := 35;
trtm_main_table[1].sol[33][2]  := 3 ;
trtm_main_table[1].sol[33][3]  := 2 ;
trtm_main_table[1].sol[33][4]  := 24;

trtm_main_table[1].sol[34][1]  := 2 ;
trtm_main_table[1].sol[34][2]  := 27;
trtm_main_table[1].sol[34][3]  := 28;
trtm_main_table[1].sol[34][4]  := 11;

trtm_main_table[1].sol[35][1]  := 29;
trtm_main_table[1].sol[35][2]  := 5 ;
trtm_main_table[1].sol[35][3]  := 15;
trtm_main_table[1].sol[35][4]  := 8 ;

trtm_main_table[1].sol[36][1]  := 26;
trtm_main_table[1].sol[36][2]  := 30;
trtm_main_table[1].sol[36][3]  := 36;
trtm_main_table[1].sol[36][4]  := 34;

trtm_main_table[1].sol[37][1]  := 28;
trtm_main_table[1].sol[37][2]  := 29;
trtm_main_table[1].sol[37][3]  := 26;
trtm_main_table[1].sol[37][4]  := 32;

trtm_main_table[1].sol[38][1]  := 26;
trtm_main_table[1].sol[38][2]  := 35;
trtm_main_table[1].sol[38][3]  := 18;
trtm_main_table[1].sol[38][4]  := 19;

trtm_main_table[1].sol[39][1]  := 35;
trtm_main_table[1].sol[39][2]  := 3 ;
trtm_main_table[1].sol[39][3]  := 24;
trtm_main_table[1].sol[39][4]  := 37;

trtm_main_table[2].id         := 2;
trtm_main_table[2].desc       := 'Вес неподвижного объекта';


trtm_main_table[2].sol[1][1]  := 0 ;
trtm_main_table[2].sol[1][2]  := 0 ;
trtm_main_table[2].sol[1][3]  := 0 ;
trtm_main_table[2].sol[1][4]  := 0 ;

trtm_main_table[2].sol[2][1]  := 0 ;
trtm_main_table[2].sol[2][2]  := 0 ;
trtm_main_table[2].sol[2][3]  := 0 ;
trtm_main_table[2].sol[2][4]  := 0 ;

trtm_main_table[2].sol[3][1]  := 0 ;
trtm_main_table[2].sol[3][2]  := 0 ;
trtm_main_table[2].sol[3][3]  := 0 ;
trtm_main_table[2].sol[3][4]  := 0 ;

trtm_main_table[2].sol[4][1]  := 10;
trtm_main_table[2].sol[4][2]  := 1 ;
trtm_main_table[2].sol[4][3]  := 29;
trtm_main_table[2].sol[4][4]  := 35;

trtm_main_table[2].sol[5][1]  := 0 ;
trtm_main_table[2].sol[5][2]  := 0 ;
trtm_main_table[2].sol[5][3]  := 0 ;
trtm_main_table[2].sol[5][4]  := 0 ;

trtm_main_table[2].sol[6][1]  := 35;
trtm_main_table[2].sol[6][2]  := 30;
trtm_main_table[2].sol[6][3]  := 13;
trtm_main_table[2].sol[6][4]  := 2 ;

trtm_main_table[2].sol[7][1]  := 0 ;
trtm_main_table[2].sol[7][2]  := 0 ;
trtm_main_table[2].sol[7][3]  := 0 ;
trtm_main_table[2].sol[7][4]  := 0 ;

trtm_main_table[2].sol[8][1]  := 5 ;
trtm_main_table[2].sol[8][2]  := 35;
trtm_main_table[2].sol[8][3]  := 14;
trtm_main_table[2].sol[8][4]  := 2 ;

trtm_main_table[2].sol[9][1]  := 0 ;
trtm_main_table[2].sol[9][2]  := 0 ;
trtm_main_table[2].sol[9][3]  := 0 ;
trtm_main_table[2].sol[9][4]  := 0 ;

trtm_main_table[2].sol[10][1]  := 8 ;
trtm_main_table[2].sol[10][2]  := 10;
trtm_main_table[2].sol[10][3]  := 19;
trtm_main_table[2].sol[10][4]  := 35;

trtm_main_table[2].sol[11][1]  := 13;
trtm_main_table[2].sol[11][2]  := 29;
trtm_main_table[2].sol[11][3]  := 10;
trtm_main_table[2].sol[11][4]  := 18;

trtm_main_table[2].sol[12][1]  := 13;
trtm_main_table[2].sol[12][2]  := 10;
trtm_main_table[2].sol[12][3]  := 29;
trtm_main_table[2].sol[12][4]  := 14;

trtm_main_table[2].sol[13][1]  := 26;
trtm_main_table[2].sol[13][2]  := 39;
trtm_main_table[2].sol[13][3]  := 1 ;
trtm_main_table[2].sol[13][4]  := 40;

trtm_main_table[2].sol[14][1]  := 28;
trtm_main_table[2].sol[14][2]  := 2 ;
trtm_main_table[2].sol[14][3]  := 10;
trtm_main_table[2].sol[14][4]  := 27;

trtm_main_table[2].sol[15][1]  := 0 ;
trtm_main_table[2].sol[15][2]  := 0 ;
trtm_main_table[2].sol[15][3]  := 0 ;
trtm_main_table[2].sol[15][4]  := 0 ;

trtm_main_table[2].sol[16][1]  := 2 ;
trtm_main_table[2].sol[16][2]  := 27;
trtm_main_table[2].sol[16][3]  := 19;
trtm_main_table[2].sol[16][4]  := 6 ;

trtm_main_table[2].sol[17][1]  := 28;
trtm_main_table[2].sol[17][2]  := 19;
trtm_main_table[2].sol[17][3]  := 32;
trtm_main_table[2].sol[17][4]  := 22;

trtm_main_table[2].sol[18][1]  := 35;
trtm_main_table[2].sol[18][2]  := 19;
trtm_main_table[2].sol[18][3]  := 32;
trtm_main_table[2].sol[18][4]  := 0 ;

trtm_main_table[2].sol[19][1]  := 0 ;
trtm_main_table[2].sol[19][2]  := 0 ;
trtm_main_table[2].sol[19][3]  := 0 ;
trtm_main_table[2].sol[19][4]  := 0 ;

trtm_main_table[2].sol[20][1]  := 18;
trtm_main_table[2].sol[20][2]  := 19;
trtm_main_table[2].sol[20][3]  := 28;
trtm_main_table[2].sol[20][4]  := 1 ;

trtm_main_table[2].sol[21][1]  := 15;
trtm_main_table[2].sol[21][2]  := 19;
trtm_main_table[2].sol[21][3]  := 18;
trtm_main_table[2].sol[21][4]  := 22;

trtm_main_table[2].sol[22][1]  := 18;
trtm_main_table[2].sol[22][2]  := 19;
trtm_main_table[2].sol[22][3]  := 28;
trtm_main_table[2].sol[22][4]  := 15;

trtm_main_table[2].sol[23][1]  := 5 ;
trtm_main_table[2].sol[23][2]  := 8 ;
trtm_main_table[2].sol[23][3]  := 13;
trtm_main_table[2].sol[23][4]  := 30;

trtm_main_table[2].sol[24][1]  := 10;
trtm_main_table[2].sol[24][2]  := 15;
trtm_main_table[2].sol[24][3]  := 35;
trtm_main_table[2].sol[24][4]  := 0 ;

trtm_main_table[2].sol[25][1]  := 10;
trtm_main_table[2].sol[25][2]  := 20;
trtm_main_table[2].sol[25][3]  := 35;
trtm_main_table[2].sol[25][4]  := 26;

trtm_main_table[2].sol[26][1]  := 19;
trtm_main_table[2].sol[26][2]  := 6 ;
trtm_main_table[2].sol[26][3]  := 18;
trtm_main_table[2].sol[26][4]  := 26;

trtm_main_table[2].sol[27][1]  := 10;
trtm_main_table[2].sol[27][2]  := 28;
trtm_main_table[2].sol[27][3]  := 8 ;
trtm_main_table[2].sol[27][4]  := 3 ;

trtm_main_table[2].sol[28][1]  := 18;
trtm_main_table[2].sol[28][2]  := 26;
trtm_main_table[2].sol[28][3]  := 28;
trtm_main_table[2].sol[28][4]  := 0 ;

trtm_main_table[2].sol[29][1]  := 10;
trtm_main_table[2].sol[29][2]  := 1 ;
trtm_main_table[2].sol[29][3]  := 35;
trtm_main_table[2].sol[29][4]  := 17;

trtm_main_table[2].sol[30][1]  := 2 ;
trtm_main_table[2].sol[30][2]  := 19;
trtm_main_table[2].sol[30][3]  := 22;
trtm_main_table[2].sol[30][4]  := 37;

trtm_main_table[2].sol[31][1]  := 35;
trtm_main_table[2].sol[31][2]  := 22;
trtm_main_table[2].sol[31][3]  := 1 ;
trtm_main_table[2].sol[31][4]  := 39;

trtm_main_table[2].sol[32][1]  := 28;
trtm_main_table[2].sol[32][2]  := 1 ;
trtm_main_table[2].sol[32][3]  := 9 ;
trtm_main_table[2].sol[32][4]  := 0 ;

trtm_main_table[2].sol[33][1]  := 6 ;
trtm_main_table[2].sol[33][2]  := 13;
trtm_main_table[2].sol[33][3]  := 1 ;
trtm_main_table[2].sol[33][4]  := 32;

trtm_main_table[2].sol[34][1]  := 2 ;
trtm_main_table[2].sol[34][2]  := 27;
trtm_main_table[2].sol[34][3]  := 28;
trtm_main_table[2].sol[34][4]  := 11;

trtm_main_table[2].sol[35][1]  := 19;
trtm_main_table[2].sol[35][2]  := 15;
trtm_main_table[2].sol[35][3]  := 29;
trtm_main_table[2].sol[35][4]  := 0 ;

trtm_main_table[2].sol[36][1]  := 1 ;
trtm_main_table[2].sol[36][2]  := 10;
trtm_main_table[2].sol[36][3]  := 26;
trtm_main_table[2].sol[36][4]  := 39;

trtm_main_table[2].sol[37][1]  := 25;
trtm_main_table[2].sol[37][2]  := 28;
trtm_main_table[2].sol[37][3]  := 17;
trtm_main_table[2].sol[37][4]  := 15;

trtm_main_table[2].sol[38][1]  := 2 ;
trtm_main_table[2].sol[38][2]  := 26;
trtm_main_table[2].sol[38][3]  := 35;
trtm_main_table[2].sol[38][4]  := 0 ;

trtm_main_table[2].sol[39][1]  := 1 ;
trtm_main_table[2].sol[39][2]  := 28;
trtm_main_table[2].sol[39][3]  := 15;
trtm_main_table[2].sol[39][4]  := 35;

trtm_main_table[3].id         := 3;
trtm_main_table[3].desc       := 'Длина подвижного объекта';


trtm_main_table[3].sol[1][1]  := 8 ;
trtm_main_table[3].sol[1][2]  := 15;
trtm_main_table[3].sol[1][3]  := 29;
trtm_main_table[3].sol[1][4]  := 34;

trtm_main_table[3].sol[2][1]  := 0 ;
trtm_main_table[3].sol[2][2]  := 0 ;
trtm_main_table[3].sol[2][3]  := 0 ;
trtm_main_table[3].sol[2][4]  := 0 ;

trtm_main_table[3].sol[3][1]  := 0 ;
trtm_main_table[3].sol[3][2]  := 0 ;
trtm_main_table[3].sol[3][3]  := 0 ;
trtm_main_table[3].sol[3][4]  := 0 ;

trtm_main_table[3].sol[4][1]  := 0 ;
trtm_main_table[3].sol[4][2]  := 0 ;
trtm_main_table[3].sol[4][3]  := 0 ;
trtm_main_table[3].sol[4][4]  := 0 ;

trtm_main_table[3].sol[5][1]  := 15;
trtm_main_table[3].sol[5][2]  := 17;
trtm_main_table[3].sol[5][3]  := 4 ;
trtm_main_table[3].sol[5][4]  := 0 ;

trtm_main_table[3].sol[6][1]  := 0 ;
trtm_main_table[3].sol[6][2]  := 0 ;
trtm_main_table[3].sol[6][3]  := 0 ;
trtm_main_table[3].sol[6][4]  := 0 ;

trtm_main_table[3].sol[7][1]  := 7 ;
trtm_main_table[3].sol[7][2]  := 17;
trtm_main_table[3].sol[7][3]  := 4 ;
trtm_main_table[3].sol[7][4]  := 35;

trtm_main_table[3].sol[8][1]  := 0 ;
trtm_main_table[3].sol[8][2]  := 0 ;
trtm_main_table[3].sol[8][3]  := 0 ;
trtm_main_table[3].sol[8][4]  := 0 ;

trtm_main_table[3].sol[9][1]  := 13;
trtm_main_table[3].sol[9][2]  := 4 ;
trtm_main_table[3].sol[9][3]  := 8 ;
trtm_main_table[3].sol[9][4]  := 0 ;

trtm_main_table[3].sol[10][1]  := 17;
trtm_main_table[3].sol[10][2]  := 10;
trtm_main_table[3].sol[10][3]  := 4 ;
trtm_main_table[3].sol[10][4]  := 0 ;

trtm_main_table[3].sol[11][1]  := 1 ;
trtm_main_table[3].sol[11][2]  := 8 ;
trtm_main_table[3].sol[11][3]  := 35;
trtm_main_table[3].sol[11][4]  := 0 ;

trtm_main_table[3].sol[12][1]  := 1 ;
trtm_main_table[3].sol[12][2]  := 8 ;
trtm_main_table[3].sol[12][3]  := 10;
trtm_main_table[3].sol[12][4]  := 29;

trtm_main_table[3].sol[13][1]  := 1 ;
trtm_main_table[3].sol[13][2]  := 8 ;
trtm_main_table[3].sol[13][3]  := 15;
trtm_main_table[3].sol[13][4]  := 34;

trtm_main_table[3].sol[14][1]  := 8 ;
trtm_main_table[3].sol[14][2]  := 35;
trtm_main_table[3].sol[14][3]  := 29;
trtm_main_table[3].sol[14][4]  := 34;

trtm_main_table[3].sol[15][1]  := 19;
trtm_main_table[3].sol[15][2]  := 0 ;
trtm_main_table[3].sol[15][3]  := 0 ;
trtm_main_table[3].sol[15][4]  := 0 ;

trtm_main_table[3].sol[16][1]  := 0 ;
trtm_main_table[3].sol[16][2]  := 0 ;
trtm_main_table[3].sol[16][3]  := 0 ;
trtm_main_table[3].sol[16][4]  := 0 ;

trtm_main_table[3].sol[17][1]  := 10;
trtm_main_table[3].sol[17][2]  := 15;
trtm_main_table[3].sol[17][3]  := 19;
trtm_main_table[3].sol[17][4]  := 0 ;

trtm_main_table[3].sol[18][1]  := 32;
trtm_main_table[3].sol[18][2]  := 0 ;
trtm_main_table[3].sol[18][3]  := 0 ;
trtm_main_table[3].sol[18][4]  := 0 ;

trtm_main_table[3].sol[19][1]  := 8 ;
trtm_main_table[3].sol[19][2]  := 35;
trtm_main_table[3].sol[19][3]  := 24;
trtm_main_table[3].sol[19][4]  := 0 ;

trtm_main_table[3].sol[20][1]  := 0 ;
trtm_main_table[3].sol[20][2]  := 0 ;
trtm_main_table[3].sol[20][3]  := 0 ;
trtm_main_table[3].sol[20][4]  := 0 ;

trtm_main_table[3].sol[21][1]  := 1 ;
trtm_main_table[3].sol[21][2]  := 35;
trtm_main_table[3].sol[21][3]  := 0 ;
trtm_main_table[3].sol[21][4]  := 0 ;

trtm_main_table[3].sol[22][1]  := 7 ;
trtm_main_table[3].sol[22][2]  := 2 ;
trtm_main_table[3].sol[22][3]  := 35;
trtm_main_table[3].sol[22][4]  := 39;

trtm_main_table[3].sol[23][1]  := 4 ;
trtm_main_table[3].sol[23][2]  := 29;
trtm_main_table[3].sol[23][3]  := 23;
trtm_main_table[3].sol[23][4]  := 10;

trtm_main_table[3].sol[24][1]  := 1 ;
trtm_main_table[3].sol[24][2]  := 24;
trtm_main_table[3].sol[24][3]  := 0 ;
trtm_main_table[3].sol[24][4]  := 0 ;

trtm_main_table[3].sol[25][1]  := 15;
trtm_main_table[3].sol[25][2]  := 2 ;
trtm_main_table[3].sol[25][3]  := 29;
trtm_main_table[3].sol[25][4]  := 0 ;

trtm_main_table[3].sol[26][1]  := 29;
trtm_main_table[3].sol[26][2]  := 35;
trtm_main_table[3].sol[26][3]  := 0 ;
trtm_main_table[3].sol[26][4]  := 0 ;

trtm_main_table[3].sol[27][1]  := 10;
trtm_main_table[3].sol[27][2]  := 14;
trtm_main_table[3].sol[27][3]  := 29;
trtm_main_table[3].sol[27][4]  := 40;

trtm_main_table[3].sol[28][1]  := 28;
trtm_main_table[3].sol[28][2]  := 32;
trtm_main_table[3].sol[28][3]  := 4 ;
trtm_main_table[3].sol[28][4]  := 0 ;

trtm_main_table[3].sol[29][1]  := 10;
trtm_main_table[3].sol[29][2]  := 28;
trtm_main_table[3].sol[29][3]  := 29;
trtm_main_table[3].sol[29][4]  := 37;

trtm_main_table[3].sol[30][1]  := 1 ;
trtm_main_table[3].sol[30][2]  := 15;
trtm_main_table[3].sol[30][3]  := 17;
trtm_main_table[3].sol[30][4]  := 24;

trtm_main_table[3].sol[31][1]  := 17;
trtm_main_table[3].sol[31][2]  := 15;
trtm_main_table[3].sol[31][3]  := 0 ;
trtm_main_table[3].sol[31][4]  := 0 ;

trtm_main_table[3].sol[32][1]  := 1 ;
trtm_main_table[3].sol[32][2]  := 29;
trtm_main_table[3].sol[32][3]  := 17;
trtm_main_table[3].sol[32][4]  := 0 ;

trtm_main_table[3].sol[33][1]  := 15;
trtm_main_table[3].sol[33][2]  := 29;
trtm_main_table[3].sol[33][3]  := 35;
trtm_main_table[3].sol[33][4]  := 4 ;

trtm_main_table[3].sol[34][1]  := 1 ;
trtm_main_table[3].sol[34][2]  := 28;
trtm_main_table[3].sol[34][3]  := 10;
trtm_main_table[3].sol[34][4]  := 0 ;

trtm_main_table[3].sol[35][1]  := 14;
trtm_main_table[3].sol[35][2]  := 15;
trtm_main_table[3].sol[35][3]  := 1 ;
trtm_main_table[3].sol[35][4]  := 16;

trtm_main_table[3].sol[36][1]  := 1 ;
trtm_main_table[3].sol[36][2]  := 19;
trtm_main_table[3].sol[36][3]  := 26;
trtm_main_table[3].sol[36][4]  := 24;

trtm_main_table[3].sol[37][1]  := 35;
trtm_main_table[3].sol[37][2]  := 1 ;
trtm_main_table[3].sol[37][3]  := 26;
trtm_main_table[3].sol[37][4]  := 24;

trtm_main_table[3].sol[38][1]  := 17;
trtm_main_table[3].sol[38][2]  := 24;
trtm_main_table[3].sol[38][3]  := 26;
trtm_main_table[3].sol[38][4]  := 16;

trtm_main_table[3].sol[39][1]  := 14;
trtm_main_table[3].sol[39][2]  := 4 ;
trtm_main_table[3].sol[39][3]  := 28;
trtm_main_table[3].sol[39][4]  := 29;

trtm_main_table[4].id         := 4;
trtm_main_table[4].desc       := 'Длина неподвижного объекта';


trtm_main_table[4].sol[1][1]  := 0 ;
trtm_main_table[4].sol[1][2]  := 0 ;
trtm_main_table[4].sol[1][3]  := 0 ;
trtm_main_table[4].sol[1][4]  := 0 ;

trtm_main_table[4].sol[2][1]  := 35;
trtm_main_table[4].sol[2][2]  := 28;
trtm_main_table[4].sol[2][3]  := 40;
trtm_main_table[4].sol[2][4]  := 29;

trtm_main_table[4].sol[3][1]  := 0 ;
trtm_main_table[4].sol[3][2]  := 0 ;
trtm_main_table[4].sol[3][3]  := 0 ;
trtm_main_table[4].sol[3][4]  := 0 ;

trtm_main_table[4].sol[4][1]  := 0 ;
trtm_main_table[4].sol[4][2]  := 0 ;
trtm_main_table[4].sol[4][3]  := 0 ;
trtm_main_table[4].sol[4][4]  := 0 ;

trtm_main_table[4].sol[5][1]  := 0 ;
trtm_main_table[4].sol[5][2]  := 0 ;
trtm_main_table[4].sol[5][3]  := 0 ;
trtm_main_table[4].sol[5][4]  := 0 ;

trtm_main_table[4].sol[6][1]  := 17;
trtm_main_table[4].sol[6][2]  := 7 ;
trtm_main_table[4].sol[6][3]  := 10;
trtm_main_table[4].sol[6][4]  := 40;

trtm_main_table[4].sol[7][1]  := 0 ;
trtm_main_table[4].sol[7][2]  := 0 ;
trtm_main_table[4].sol[7][3]  := 0 ;
trtm_main_table[4].sol[7][4]  := 0 ;

trtm_main_table[4].sol[8][1]  := 35;
trtm_main_table[4].sol[8][2]  := 8 ;
trtm_main_table[4].sol[8][3]  := 2 ;
trtm_main_table[4].sol[8][4]  := 14;

trtm_main_table[4].sol[9][1]  := 0 ;
trtm_main_table[4].sol[9][2]  := 0 ;
trtm_main_table[4].sol[9][3]  := 0 ;
trtm_main_table[4].sol[9][4]  := 0 ;

trtm_main_table[4].sol[10][1]  := 28;
trtm_main_table[4].sol[10][2]  := 10;
trtm_main_table[4].sol[10][3]  := 0 ;
trtm_main_table[4].sol[10][4]  := 0 ;

trtm_main_table[4].sol[11][1]  := 1 ;
trtm_main_table[4].sol[11][2]  := 14;
trtm_main_table[4].sol[11][3]  := 35;
trtm_main_table[4].sol[11][4]  := 0 ;

trtm_main_table[4].sol[12][1]  := 13;
trtm_main_table[4].sol[12][2]  := 14;
trtm_main_table[4].sol[12][3]  := 15;
trtm_main_table[4].sol[12][4]  := 7 ;

trtm_main_table[4].sol[13][1]  := 39;
trtm_main_table[4].sol[13][2]  := 37;
trtm_main_table[4].sol[13][3]  := 35;
trtm_main_table[4].sol[13][4]  := 0 ;

trtm_main_table[4].sol[14][1]  := 15;
trtm_main_table[4].sol[14][2]  := 14;
trtm_main_table[4].sol[14][3]  := 28;
trtm_main_table[4].sol[14][4]  := 26;

trtm_main_table[4].sol[15][1]  := 0 ;
trtm_main_table[4].sol[15][2]  := 0 ;
trtm_main_table[4].sol[15][3]  := 0 ;
trtm_main_table[4].sol[15][4]  := 0 ;

trtm_main_table[4].sol[16][1]  := 1 ;
trtm_main_table[4].sol[16][2]  := 40;
trtm_main_table[4].sol[16][3]  := 35;
trtm_main_table[4].sol[16][4]  := 0 ;

trtm_main_table[4].sol[17][1]  := 3 ;
trtm_main_table[4].sol[17][2]  := 35;
trtm_main_table[4].sol[17][3]  := 38;
trtm_main_table[4].sol[17][4]  := 18;

trtm_main_table[4].sol[18][1]  := 3 ;
trtm_main_table[4].sol[18][2]  := 25;
trtm_main_table[4].sol[18][3]  := 0 ;
trtm_main_table[4].sol[18][4]  := 0 ;

trtm_main_table[4].sol[19][1]  := 0 ;
trtm_main_table[4].sol[19][2]  := 0 ;
trtm_main_table[4].sol[19][3]  := 0 ;
trtm_main_table[4].sol[19][4]  := 0 ;

trtm_main_table[4].sol[20][1]  := 0 ;
trtm_main_table[4].sol[20][2]  := 0 ;
trtm_main_table[4].sol[20][3]  := 0 ;
trtm_main_table[4].sol[20][4]  := 0 ;

trtm_main_table[4].sol[21][1]  := 12;
trtm_main_table[4].sol[21][2]  := 8 ;
trtm_main_table[4].sol[21][3]  := 0 ;
trtm_main_table[4].sol[21][4]  := 0 ;

trtm_main_table[4].sol[22][1]  := 6 ;
trtm_main_table[4].sol[22][2]  := 28;
trtm_main_table[4].sol[22][3]  := 0 ;
trtm_main_table[4].sol[22][4]  := 0 ;

trtm_main_table[4].sol[23][1]  := 10;
trtm_main_table[4].sol[23][2]  := 28;
trtm_main_table[4].sol[23][3]  := 24;
trtm_main_table[4].sol[23][4]  := 35;

trtm_main_table[4].sol[24][1]  := 24;
trtm_main_table[4].sol[24][2]  := 26;
trtm_main_table[4].sol[24][3]  := 0 ;
trtm_main_table[4].sol[24][4]  := 0 ;

trtm_main_table[4].sol[25][1]  := 30;
trtm_main_table[4].sol[25][2]  := 29;
trtm_main_table[4].sol[25][3]  := 14;
trtm_main_table[4].sol[25][4]  := 0 ;

trtm_main_table[4].sol[26][1]  := 0 ;
trtm_main_table[4].sol[26][2]  := 0 ;
trtm_main_table[4].sol[26][3]  := 0 ;
trtm_main_table[4].sol[26][4]  := 0 ;

trtm_main_table[4].sol[27][1]  := 15;
trtm_main_table[4].sol[27][2]  := 29;
trtm_main_table[4].sol[27][3]  := 28;
trtm_main_table[4].sol[27][4]  := 0 ;

trtm_main_table[4].sol[28][1]  := 32;
trtm_main_table[4].sol[28][2]  := 28;
trtm_main_table[4].sol[28][3]  := 3 ;
trtm_main_table[4].sol[28][4]  := 0 ;

trtm_main_table[4].sol[29][1]  := 2 ;
trtm_main_table[4].sol[29][2]  := 32;
trtm_main_table[4].sol[29][3]  := 10;
trtm_main_table[4].sol[29][4]  := 0 ;

trtm_main_table[4].sol[30][1]  := 1 ;
trtm_main_table[4].sol[30][2]  := 18;
trtm_main_table[4].sol[30][3]  := 0 ;
trtm_main_table[4].sol[30][4]  := 0 ;

trtm_main_table[4].sol[31][1]  := 0 ;
trtm_main_table[4].sol[31][2]  := 0 ;
trtm_main_table[4].sol[31][3]  := 0 ;
trtm_main_table[4].sol[31][4]  := 0 ;

trtm_main_table[4].sol[32][1]  := 15;
trtm_main_table[4].sol[32][2]  := 17;
trtm_main_table[4].sol[32][3]  := 27;
trtm_main_table[4].sol[32][4]  := 0 ;

trtm_main_table[4].sol[33][1]  := 2 ;
trtm_main_table[4].sol[33][2]  := 25;
trtm_main_table[4].sol[33][3]  := 0 ;
trtm_main_table[4].sol[33][4]  := 0 ;

trtm_main_table[4].sol[34][1]  := 3 ;
trtm_main_table[4].sol[34][2]  := 0 ;
trtm_main_table[4].sol[34][3]  := 0 ;
trtm_main_table[4].sol[34][4]  := 0 ;

trtm_main_table[4].sol[35][1]  := 1 ;
trtm_main_table[4].sol[35][2]  := 35;
trtm_main_table[4].sol[35][3]  := 0 ;
trtm_main_table[4].sol[35][4]  := 0 ;

trtm_main_table[4].sol[36][1]  := 1 ;
trtm_main_table[4].sol[36][2]  := 26;
trtm_main_table[4].sol[36][3]  := 0 ;
trtm_main_table[4].sol[36][4]  := 0 ;

trtm_main_table[4].sol[37][1]  := 26;
trtm_main_table[4].sol[37][2]  := 0 ;
trtm_main_table[4].sol[37][3]  := 0 ;
trtm_main_table[4].sol[37][4]  := 0 ;

trtm_main_table[4].sol[38][1]  := 0 ;
trtm_main_table[4].sol[38][2]  := 0 ;
trtm_main_table[4].sol[38][3]  := 0 ;
trtm_main_table[4].sol[38][4]  := 0 ;

trtm_main_table[4].sol[39][1]  := 30;
trtm_main_table[4].sol[39][2]  := 14;
trtm_main_table[4].sol[39][3]  := 7 ;
trtm_main_table[4].sol[39][4]  := 26;

trtm_main_table[5].id         := 5;
trtm_main_table[5].desc       := 'Площадь подвижного объекта';


trtm_main_table[5].sol[1][1]  := 2 ;
trtm_main_table[5].sol[1][2]  := 17;
trtm_main_table[5].sol[1][3]  := 29;
trtm_main_table[5].sol[1][4]  := 4 ;

trtm_main_table[5].sol[2][1]  := 0 ;
trtm_main_table[5].sol[2][2]  := 0 ;
trtm_main_table[5].sol[2][3]  := 0 ;
trtm_main_table[5].sol[2][4]  := 0 ;

trtm_main_table[5].sol[3][1]  := 14;
trtm_main_table[5].sol[3][2]  := 15;
trtm_main_table[5].sol[3][3]  := 18;
trtm_main_table[5].sol[3][4]  := 4 ;

trtm_main_table[5].sol[4][1]  := 0 ;
trtm_main_table[5].sol[4][2]  := 0 ;
trtm_main_table[5].sol[4][3]  := 0 ;
trtm_main_table[5].sol[4][4]  := 0 ;

trtm_main_table[5].sol[5][1]  := 0 ;
trtm_main_table[5].sol[5][2]  := 0 ;
trtm_main_table[5].sol[5][3]  := 0 ;
trtm_main_table[5].sol[5][4]  := 0 ;

trtm_main_table[5].sol[6][1]  := 0 ;
trtm_main_table[5].sol[6][2]  := 0 ;
trtm_main_table[5].sol[6][3]  := 0 ;
trtm_main_table[5].sol[6][4]  := 0 ;

trtm_main_table[5].sol[7][1]  := 7 ;
trtm_main_table[5].sol[7][2]  := 14;
trtm_main_table[5].sol[7][3]  := 17;
trtm_main_table[5].sol[7][4]  := 4 ;

trtm_main_table[5].sol[8][1]  := 0 ;
trtm_main_table[5].sol[8][2]  := 0 ;
trtm_main_table[5].sol[8][3]  := 0 ;
trtm_main_table[5].sol[8][4]  := 0 ;

trtm_main_table[5].sol[9][1]  := 29;
trtm_main_table[5].sol[9][2]  := 30;
trtm_main_table[5].sol[9][3]  := 4 ;
trtm_main_table[5].sol[9][4]  := 34;

trtm_main_table[5].sol[10][1]  := 19;
trtm_main_table[5].sol[10][2]  := 30;
trtm_main_table[5].sol[10][3]  := 35;
trtm_main_table[5].sol[10][4]  := 2 ;

trtm_main_table[5].sol[11][1]  := 10;
trtm_main_table[5].sol[11][2]  := 15;
trtm_main_table[5].sol[11][3]  := 36;
trtm_main_table[5].sol[11][4]  := 28;

trtm_main_table[5].sol[12][1]  := 5 ;
trtm_main_table[5].sol[12][2]  := 34;
trtm_main_table[5].sol[12][3]  := 29;
trtm_main_table[5].sol[12][4]  := 4 ;

trtm_main_table[5].sol[13][1]  := 11;
trtm_main_table[5].sol[13][2]  := 2 ;
trtm_main_table[5].sol[13][3]  := 13;
trtm_main_table[5].sol[13][4]  := 39;

trtm_main_table[5].sol[14][1]  := 3 ;
trtm_main_table[5].sol[14][2]  := 15;
trtm_main_table[5].sol[14][3]  := 40;
trtm_main_table[5].sol[14][4]  := 14;

trtm_main_table[5].sol[15][1]  := 6 ;
trtm_main_table[5].sol[15][2]  := 3 ;
trtm_main_table[5].sol[15][3]  := 0 ;
trtm_main_table[5].sol[15][4]  := 0 ;

trtm_main_table[5].sol[16][1]  := 0 ;
trtm_main_table[5].sol[16][2]  := 0 ;
trtm_main_table[5].sol[16][3]  := 0 ;
trtm_main_table[5].sol[16][4]  := 0 ;

trtm_main_table[5].sol[17][1]  := 2 ;
trtm_main_table[5].sol[17][2]  := 15;
trtm_main_table[5].sol[17][3]  := 16;
trtm_main_table[5].sol[17][4]  := 0 ;

trtm_main_table[5].sol[18][1]  := 15;
trtm_main_table[5].sol[18][2]  := 32;
trtm_main_table[5].sol[18][3]  := 19;
trtm_main_table[5].sol[18][4]  := 13;

trtm_main_table[5].sol[19][1]  := 19;
trtm_main_table[5].sol[19][2]  := 32;
trtm_main_table[5].sol[19][3]  := 0 ;
trtm_main_table[5].sol[19][4]  := 0 ;

trtm_main_table[5].sol[20][1]  := 0 ;
trtm_main_table[5].sol[20][2]  := 0 ;
trtm_main_table[5].sol[20][3]  := 0 ;
trtm_main_table[5].sol[20][4]  := 0 ;

trtm_main_table[5].sol[21][1]  := 19;
trtm_main_table[5].sol[21][2]  := 10;
trtm_main_table[5].sol[21][3]  := 32;
trtm_main_table[5].sol[21][4]  := 18;

trtm_main_table[5].sol[22][1]  := 15;
trtm_main_table[5].sol[22][2]  := 17;
trtm_main_table[5].sol[22][3]  := 30;
trtm_main_table[5].sol[22][4]  := 26;

trtm_main_table[5].sol[23][1]  := 10;
trtm_main_table[5].sol[23][2]  := 35;
trtm_main_table[5].sol[23][3]  := 2 ;
trtm_main_table[5].sol[23][4]  := 39;

trtm_main_table[5].sol[24][1]  := 30;
trtm_main_table[5].sol[24][2]  := 26;
trtm_main_table[5].sol[24][3]  := 0 ;
trtm_main_table[5].sol[24][4]  := 0 ;

trtm_main_table[5].sol[25][1]  := 26;
trtm_main_table[5].sol[25][2]  := 4 ;
trtm_main_table[5].sol[25][3]  := 0 ;
trtm_main_table[5].sol[25][4]  := 0 ;

trtm_main_table[5].sol[26][1]  := 29;
trtm_main_table[5].sol[26][2]  := 30;
trtm_main_table[5].sol[26][3]  := 6 ;
trtm_main_table[5].sol[26][4]  := 13;

trtm_main_table[5].sol[27][1]  := 29;
trtm_main_table[5].sol[27][2]  := 9 ;
trtm_main_table[5].sol[27][3]  := 0 ;
trtm_main_table[5].sol[27][4]  := 0 ;

trtm_main_table[5].sol[28][1]  := 26;
trtm_main_table[5].sol[28][2]  := 28;
trtm_main_table[5].sol[28][3]  := 32;
trtm_main_table[5].sol[28][4]  := 3 ;

trtm_main_table[5].sol[29][1]  := 2 ;
trtm_main_table[5].sol[29][2]  := 32;
trtm_main_table[5].sol[29][3]  := 0 ;
trtm_main_table[5].sol[29][4]  := 0 ;

trtm_main_table[5].sol[30][1]  := 22;
trtm_main_table[5].sol[30][2]  := 33;
trtm_main_table[5].sol[30][3]  := 28;
trtm_main_table[5].sol[30][4]  := 1 ;

trtm_main_table[5].sol[31][1]  := 17;
trtm_main_table[5].sol[31][2]  := 2 ;
trtm_main_table[5].sol[31][3]  := 18;
trtm_main_table[5].sol[31][4]  := 39;

trtm_main_table[5].sol[32][1]  := 13;
trtm_main_table[5].sol[32][2]  := 1 ;
trtm_main_table[5].sol[32][3]  := 26;
trtm_main_table[5].sol[32][4]  := 24;

trtm_main_table[5].sol[33][1]  := 15;
trtm_main_table[5].sol[33][2]  := 17;
trtm_main_table[5].sol[33][3]  := 13;
trtm_main_table[5].sol[33][4]  := 16;

trtm_main_table[5].sol[34][1]  := 15;
trtm_main_table[5].sol[34][2]  := 13;
trtm_main_table[5].sol[34][3]  := 10;
trtm_main_table[5].sol[34][4]  := 1 ;

trtm_main_table[5].sol[35][1]  := 15;
trtm_main_table[5].sol[35][2]  := 30;
trtm_main_table[5].sol[35][3]  := 0 ;
trtm_main_table[5].sol[35][4]  := 0 ;

trtm_main_table[5].sol[36][1]  := 14;
trtm_main_table[5].sol[36][2]  := 1 ;
trtm_main_table[5].sol[36][3]  := 13;
trtm_main_table[5].sol[36][4]  := 0 ;

trtm_main_table[5].sol[37][1]  := 2 ;
trtm_main_table[5].sol[37][2]  := 36;
trtm_main_table[5].sol[37][3]  := 26;
trtm_main_table[5].sol[37][4]  := 18;

trtm_main_table[5].sol[38][1]  := 14;
trtm_main_table[5].sol[38][2]  := 30;
trtm_main_table[5].sol[38][3]  := 28;
trtm_main_table[5].sol[38][4]  := 23;

trtm_main_table[5].sol[39][1]  := 10;
trtm_main_table[5].sol[39][2]  := 26;
trtm_main_table[5].sol[39][3]  := 34;
trtm_main_table[5].sol[39][4]  := 2 ;

trtm_main_table[6].id         := 6;
trtm_main_table[6].desc       := 'Площадь неподвижного объекта';


trtm_main_table[6].sol[1][1]  := 0 ;
trtm_main_table[6].sol[1][2]  := 0 ;
trtm_main_table[6].sol[1][3]  := 0 ;
trtm_main_table[6].sol[1][4]  := 0 ;

trtm_main_table[6].sol[2][1]  := 30;
trtm_main_table[6].sol[2][2]  := 2 ;
trtm_main_table[6].sol[2][3]  := 14;
trtm_main_table[6].sol[2][4]  := 18;

trtm_main_table[6].sol[3][1]  := 0 ;
trtm_main_table[6].sol[3][2]  := 0 ;
trtm_main_table[6].sol[3][3]  := 0 ;
trtm_main_table[6].sol[3][4]  := 0 ;

trtm_main_table[6].sol[4][1]  := 26;
trtm_main_table[6].sol[4][2]  := 7 ;
trtm_main_table[6].sol[4][3]  := 9 ;
trtm_main_table[6].sol[4][4]  := 39;

trtm_main_table[6].sol[5][1]  := 0 ;
trtm_main_table[6].sol[5][2]  := 0 ;
trtm_main_table[6].sol[5][3]  := 0 ;
trtm_main_table[6].sol[5][4]  := 0 ;

trtm_main_table[6].sol[6][1]  := 0 ;
trtm_main_table[6].sol[6][2]  := 0 ;
trtm_main_table[6].sol[6][3]  := 0 ;
trtm_main_table[6].sol[6][4]  := 0 ;

trtm_main_table[6].sol[7][1]  := 0 ;
trtm_main_table[6].sol[7][2]  := 0 ;
trtm_main_table[6].sol[7][3]  := 0 ;
trtm_main_table[6].sol[7][4]  := 0 ;

trtm_main_table[6].sol[8][1]  := 0 ;
trtm_main_table[6].sol[8][2]  := 0 ;
trtm_main_table[6].sol[8][3]  := 0 ;
trtm_main_table[6].sol[8][4]  := 0 ;

trtm_main_table[6].sol[9][1]  := 0 ;
trtm_main_table[6].sol[9][2]  := 0 ;
trtm_main_table[6].sol[9][3]  := 0 ;
trtm_main_table[6].sol[9][4]  := 0 ;

trtm_main_table[6].sol[10][1]  := 1 ;
trtm_main_table[6].sol[10][2]  := 18;
trtm_main_table[6].sol[10][3]  := 35;
trtm_main_table[6].sol[10][4]  := 36;

trtm_main_table[6].sol[11][1]  := 10;
trtm_main_table[6].sol[11][2]  := 15;
trtm_main_table[6].sol[11][3]  := 36;
trtm_main_table[6].sol[11][4]  := 37;

trtm_main_table[6].sol[12][1]  := 0 ;
trtm_main_table[6].sol[12][2]  := 0 ;
trtm_main_table[6].sol[12][3]  := 0 ;
trtm_main_table[6].sol[12][4]  := 0 ;

trtm_main_table[6].sol[13][1]  := 2 ;
trtm_main_table[6].sol[13][2]  := 38;
trtm_main_table[6].sol[13][3]  := 0 ;
trtm_main_table[6].sol[13][4]  := 0 ;

trtm_main_table[6].sol[14][1]  := 40;
trtm_main_table[6].sol[14][2]  := 0 ;
trtm_main_table[6].sol[14][3]  := 0 ;
trtm_main_table[6].sol[14][4]  := 0 ;

trtm_main_table[6].sol[15][1]  := 0 ;
trtm_main_table[6].sol[15][2]  := 0 ;
trtm_main_table[6].sol[15][3]  := 0 ;
trtm_main_table[6].sol[15][4]  := 0 ;

trtm_main_table[6].sol[16][1]  := 2 ;
trtm_main_table[6].sol[16][2]  := 10;
trtm_main_table[6].sol[16][3]  := 19;
trtm_main_table[6].sol[16][4]  := 30;

trtm_main_table[6].sol[17][1]  := 35;
trtm_main_table[6].sol[17][2]  := 39;
trtm_main_table[6].sol[17][3]  := 38;
trtm_main_table[6].sol[17][4]  := 0 ;

trtm_main_table[6].sol[18][1]  := 0 ;
trtm_main_table[6].sol[18][2]  := 0 ;
trtm_main_table[6].sol[18][3]  := 0 ;
trtm_main_table[6].sol[18][4]  := 0 ;

trtm_main_table[6].sol[19][1]  := 0 ;
trtm_main_table[6].sol[19][2]  := 0 ;
trtm_main_table[6].sol[19][3]  := 0 ;
trtm_main_table[6].sol[19][4]  := 0 ;

trtm_main_table[6].sol[20][1]  := 0 ;
trtm_main_table[6].sol[20][2]  := 0 ;
trtm_main_table[6].sol[20][3]  := 0 ;
trtm_main_table[6].sol[20][4]  := 0 ;

trtm_main_table[6].sol[21][1]  := 17;
trtm_main_table[6].sol[21][2]  := 32;
trtm_main_table[6].sol[21][3]  := 0 ;
trtm_main_table[6].sol[21][4]  := 0 ;

trtm_main_table[6].sol[22][1]  := 17;
trtm_main_table[6].sol[22][2]  := 7 ;
trtm_main_table[6].sol[22][3]  := 30;
trtm_main_table[6].sol[22][4]  := 0 ;

trtm_main_table[6].sol[23][1]  := 10;
trtm_main_table[6].sol[23][2]  := 14;
trtm_main_table[6].sol[23][3]  := 18;
trtm_main_table[6].sol[23][4]  := 39;

trtm_main_table[6].sol[24][1]  := 30;
trtm_main_table[6].sol[24][2]  := 16;
trtm_main_table[6].sol[24][3]  := 0 ;
trtm_main_table[6].sol[24][4]  := 0 ;

trtm_main_table[6].sol[25][1]  := 10;
trtm_main_table[6].sol[25][2]  := 37;
trtm_main_table[6].sol[25][3]  := 4 ;
trtm_main_table[6].sol[25][4]  := 18;

trtm_main_table[6].sol[26][1]  := 2 ;
trtm_main_table[6].sol[26][2]  := 18;
trtm_main_table[6].sol[26][3]  := 40;
trtm_main_table[6].sol[26][4]  := 4 ;

trtm_main_table[6].sol[27][1]  := 32;
trtm_main_table[6].sol[27][2]  := 35;
trtm_main_table[6].sol[27][3]  := 40;
trtm_main_table[6].sol[27][4]  := 4 ;

trtm_main_table[6].sol[28][1]  := 26;
trtm_main_table[6].sol[28][2]  := 28;
trtm_main_table[6].sol[28][3]  := 32;
trtm_main_table[6].sol[28][4]  := 3 ;

trtm_main_table[6].sol[29][1]  := 2 ;
trtm_main_table[6].sol[29][2]  := 29;
trtm_main_table[6].sol[29][3]  := 18;
trtm_main_table[6].sol[29][4]  := 36;

trtm_main_table[6].sol[30][1]  := 27;
trtm_main_table[6].sol[30][2]  := 2 ;
trtm_main_table[6].sol[30][3]  := 39;
trtm_main_table[6].sol[30][4]  := 35;

trtm_main_table[6].sol[31][1]  := 22;
trtm_main_table[6].sol[31][2]  := 1 ;
trtm_main_table[6].sol[31][3]  := 40;
trtm_main_table[6].sol[31][4]  := 0 ;

trtm_main_table[6].sol[32][1]  := 40;
trtm_main_table[6].sol[32][2]  := 16;
trtm_main_table[6].sol[32][3]  := 0 ;
trtm_main_table[6].sol[32][4]  := 0 ;

trtm_main_table[6].sol[33][1]  := 16;
trtm_main_table[6].sol[33][2]  := 4 ;
trtm_main_table[6].sol[33][3]  := 0 ;
trtm_main_table[6].sol[33][4]  := 0 ;

trtm_main_table[6].sol[34][1]  := 16;
trtm_main_table[6].sol[34][2]  := 0 ;
trtm_main_table[6].sol[34][3]  := 0 ;
trtm_main_table[6].sol[34][4]  := 0 ;

trtm_main_table[6].sol[35][1]  := 15;
trtm_main_table[6].sol[35][2]  := 16;
trtm_main_table[6].sol[35][3]  := 0 ;
trtm_main_table[6].sol[35][4]  := 0 ;

trtm_main_table[6].sol[36][1]  := 1 ;
trtm_main_table[6].sol[36][2]  := 18;
trtm_main_table[6].sol[36][3]  := 36;
trtm_main_table[6].sol[36][4]  := 0 ;

trtm_main_table[6].sol[37][1]  := 2 ;
trtm_main_table[6].sol[37][2]  := 35;
trtm_main_table[6].sol[37][3]  := 30;
trtm_main_table[6].sol[37][4]  := 18;

trtm_main_table[6].sol[38][1]  := 23;
trtm_main_table[6].sol[38][2]  := 0 ;
trtm_main_table[6].sol[38][3]  := 0 ;
trtm_main_table[6].sol[38][4]  := 0 ;

trtm_main_table[6].sol[39][1]  := 10;
trtm_main_table[6].sol[39][2]  := 15;
trtm_main_table[6].sol[39][3]  := 17;
trtm_main_table[6].sol[39][4]  := 7 ;

trtm_main_table[7].id         := 7;
trtm_main_table[7].desc       := 'Объем подвижного объекта';


trtm_main_table[7].sol[1][1]  := 2 ;
trtm_main_table[7].sol[1][2]  := 26;
trtm_main_table[7].sol[1][3]  := 29;
trtm_main_table[7].sol[1][4]  := 40;

trtm_main_table[7].sol[2][1]  := 0 ;
trtm_main_table[7].sol[2][2]  := 0 ;
trtm_main_table[7].sol[2][3]  := 0 ;
trtm_main_table[7].sol[2][4]  := 0 ;

trtm_main_table[7].sol[3][1]  := 1 ;
trtm_main_table[7].sol[3][2]  := 7 ;
trtm_main_table[7].sol[3][3]  := 35;
trtm_main_table[7].sol[3][4]  := 4 ;

trtm_main_table[7].sol[4][1]  := 0 ;
trtm_main_table[7].sol[4][2]  := 0 ;
trtm_main_table[7].sol[4][3]  := 0 ;
trtm_main_table[7].sol[4][4]  := 0 ;

trtm_main_table[7].sol[5][1]  := 1 ;
trtm_main_table[7].sol[5][2]  := 7 ;
trtm_main_table[7].sol[5][3]  := 4 ;
trtm_main_table[7].sol[5][4]  := 17;

trtm_main_table[7].sol[6][1]  := 0 ;
trtm_main_table[7].sol[6][2]  := 0 ;
trtm_main_table[7].sol[6][3]  := 0 ;
trtm_main_table[7].sol[6][4]  := 0 ;

trtm_main_table[7].sol[7][1]  := 0 ;
trtm_main_table[7].sol[7][2]  := 0 ;
trtm_main_table[7].sol[7][3]  := 0 ;
trtm_main_table[7].sol[7][4]  := 0 ;

trtm_main_table[7].sol[8][1]  := 0 ;
trtm_main_table[7].sol[8][2]  := 0 ;
trtm_main_table[7].sol[8][3]  := 0 ;
trtm_main_table[7].sol[8][4]  := 0 ;

trtm_main_table[7].sol[9][1]  := 29;
trtm_main_table[7].sol[9][2]  := 4 ;
trtm_main_table[7].sol[9][3]  := 38;
trtm_main_table[7].sol[9][4]  := 34;

trtm_main_table[7].sol[10][1]  := 15;
trtm_main_table[7].sol[10][2]  := 35;
trtm_main_table[7].sol[10][3]  := 36;
trtm_main_table[7].sol[10][4]  := 37;

trtm_main_table[7].sol[11][1]  := 6 ;
trtm_main_table[7].sol[11][2]  := 35;
trtm_main_table[7].sol[11][3]  := 36;
trtm_main_table[7].sol[11][4]  := 37;

trtm_main_table[7].sol[12][1]  := 1 ;
trtm_main_table[7].sol[12][2]  := 15;
trtm_main_table[7].sol[12][3]  := 29;
trtm_main_table[7].sol[12][4]  := 4 ;

trtm_main_table[7].sol[13][1]  := 28;
trtm_main_table[7].sol[13][2]  := 10;
trtm_main_table[7].sol[13][3]  := 1 ;
trtm_main_table[7].sol[13][4]  := 39;

trtm_main_table[7].sol[14][1]  := 9 ;
trtm_main_table[7].sol[14][2]  := 14;
trtm_main_table[7].sol[14][3]  := 15;
trtm_main_table[7].sol[14][4]  := 7 ;

trtm_main_table[7].sol[15][1]  := 6 ;
trtm_main_table[7].sol[15][2]  := 35;
trtm_main_table[7].sol[15][3]  := 4 ;
trtm_main_table[7].sol[15][4]  := 0 ;

trtm_main_table[7].sol[16][1]  := 0 ;
trtm_main_table[7].sol[16][2]  := 0 ;
trtm_main_table[7].sol[16][3]  := 0 ;
trtm_main_table[7].sol[16][4]  := 0 ;

trtm_main_table[7].sol[17][1]  := 34;
trtm_main_table[7].sol[17][2]  := 39;
trtm_main_table[7].sol[17][3]  := 10;
trtm_main_table[7].sol[17][4]  := 18;

trtm_main_table[7].sol[18][1]  := 10;
trtm_main_table[7].sol[18][2]  := 13;
trtm_main_table[7].sol[18][3]  := 2 ;
trtm_main_table[7].sol[18][4]  := 0 ;

trtm_main_table[7].sol[19][1]  := 35;
trtm_main_table[7].sol[19][2]  := 0 ;
trtm_main_table[7].sol[19][3]  := 0 ;
trtm_main_table[7].sol[19][4]  := 0 ;

trtm_main_table[7].sol[20][1]  := 0 ;
trtm_main_table[7].sol[20][2]  := 0 ;
trtm_main_table[7].sol[20][3]  := 0 ;
trtm_main_table[7].sol[20][4]  := 0 ;

trtm_main_table[7].sol[21][1]  := 35;
trtm_main_table[7].sol[21][2]  := 6 ;
trtm_main_table[7].sol[21][3]  := 13;
trtm_main_table[7].sol[21][4]  := 18;

trtm_main_table[7].sol[22][1]  := 7 ;
trtm_main_table[7].sol[22][2]  := 15;
trtm_main_table[7].sol[22][3]  := 13;
trtm_main_table[7].sol[22][4]  := 16;

trtm_main_table[7].sol[23][1]  := 36;
trtm_main_table[7].sol[23][2]  := 39;
trtm_main_table[7].sol[23][3]  := 34;
trtm_main_table[7].sol[23][4]  := 10;

trtm_main_table[7].sol[24][1]  := 2 ;
trtm_main_table[7].sol[24][2]  := 22;
trtm_main_table[7].sol[24][3]  := 0 ;
trtm_main_table[7].sol[24][4]  := 0 ;

trtm_main_table[7].sol[25][1]  := 2 ;
trtm_main_table[7].sol[25][2]  := 6 ;
trtm_main_table[7].sol[25][3]  := 34;
trtm_main_table[7].sol[25][4]  := 10;

trtm_main_table[7].sol[26][1]  := 29;
trtm_main_table[7].sol[26][2]  := 30;
trtm_main_table[7].sol[26][3]  := 7 ;
trtm_main_table[7].sol[26][4]  := 0 ;

trtm_main_table[7].sol[27][1]  := 14;
trtm_main_table[7].sol[27][2]  := 1 ;
trtm_main_table[7].sol[27][3]  := 40;
trtm_main_table[7].sol[27][4]  := 11;

trtm_main_table[7].sol[28][1]  := 25;
trtm_main_table[7].sol[28][2]  := 26;
trtm_main_table[7].sol[28][3]  := 28;
trtm_main_table[7].sol[28][4]  := 0 ;

trtm_main_table[7].sol[29][1]  := 25;
trtm_main_table[7].sol[29][2]  := 28;
trtm_main_table[7].sol[29][3]  := 2 ;
trtm_main_table[7].sol[29][4]  := 16;

trtm_main_table[7].sol[30][1]  := 22;
trtm_main_table[7].sol[30][2]  := 21;
trtm_main_table[7].sol[30][3]  := 27;
trtm_main_table[7].sol[30][4]  := 35;

trtm_main_table[7].sol[31][1]  := 17;
trtm_main_table[7].sol[31][2]  := 2 ;
trtm_main_table[7].sol[31][3]  := 40;
trtm_main_table[7].sol[31][4]  := 1 ;

trtm_main_table[7].sol[32][1]  := 29;
trtm_main_table[7].sol[32][2]  := 1 ;
trtm_main_table[7].sol[32][3]  := 40;
trtm_main_table[7].sol[32][4]  := 0 ;

trtm_main_table[7].sol[33][1]  := 15;
trtm_main_table[7].sol[33][2]  := 13;
trtm_main_table[7].sol[33][3]  := 30;
trtm_main_table[7].sol[33][4]  := 12;

trtm_main_table[7].sol[34][1]  := 10;
trtm_main_table[7].sol[34][2]  := 0 ;
trtm_main_table[7].sol[34][3]  := 0 ;
trtm_main_table[7].sol[34][4]  := 0 ;

trtm_main_table[7].sol[35][1]  := 15;
trtm_main_table[7].sol[35][2]  := 29;
trtm_main_table[7].sol[35][3]  := 0 ;
trtm_main_table[7].sol[35][4]  := 0 ;

trtm_main_table[7].sol[36][1]  := 26;
trtm_main_table[7].sol[36][2]  := 1 ;
trtm_main_table[7].sol[36][3]  := 0 ;
trtm_main_table[7].sol[36][4]  := 0 ;

trtm_main_table[7].sol[37][1]  := 29;
trtm_main_table[7].sol[37][2]  := 26;
trtm_main_table[7].sol[37][3]  := 4 ;
trtm_main_table[7].sol[37][4]  := 0 ;

trtm_main_table[7].sol[38][1]  := 35;
trtm_main_table[7].sol[38][2]  := 34;
trtm_main_table[7].sol[38][3]  := 16;
trtm_main_table[7].sol[38][4]  := 24;

trtm_main_table[7].sol[39][1]  := 10;
trtm_main_table[7].sol[39][2]  := 6 ;
trtm_main_table[7].sol[39][3]  := 2 ;
trtm_main_table[7].sol[39][4]  := 34;

trtm_main_table[8].id         := 8;
trtm_main_table[8].desc       := 'Объем неподвижного объекта';


trtm_main_table[8].sol[1][1]  := 0 ;
trtm_main_table[8].sol[1][2]  := 0 ;
trtm_main_table[8].sol[1][3]  := 0 ;
trtm_main_table[8].sol[1][4]  := 0 ;

trtm_main_table[8].sol[2][1]  := 35;
trtm_main_table[8].sol[2][2]  := 10;
trtm_main_table[8].sol[2][3]  := 19;
trtm_main_table[8].sol[2][4]  := 14;

trtm_main_table[8].sol[3][1]  := 19;
trtm_main_table[8].sol[3][2]  := 14;
trtm_main_table[8].sol[3][3]  := 0 ;
trtm_main_table[8].sol[3][4]  := 0 ;

trtm_main_table[8].sol[4][1]  := 35;
trtm_main_table[8].sol[4][2]  := 8 ;
trtm_main_table[8].sol[4][3]  := 2 ;
trtm_main_table[8].sol[4][4]  := 14;

trtm_main_table[8].sol[5][1]  := 0 ;
trtm_main_table[8].sol[5][2]  := 0 ;
trtm_main_table[8].sol[5][3]  := 0 ;
trtm_main_table[8].sol[5][4]  := 0 ;

trtm_main_table[8].sol[6][1]  := 0 ;
trtm_main_table[8].sol[6][2]  := 0 ;
trtm_main_table[8].sol[6][3]  := 0 ;
trtm_main_table[8].sol[6][4]  := 0 ;

trtm_main_table[8].sol[7][1]  := 0 ;
trtm_main_table[8].sol[7][2]  := 0 ;
trtm_main_table[8].sol[7][3]  := 0 ;
trtm_main_table[8].sol[7][4]  := 0 ;

trtm_main_table[8].sol[8][1]  := 0 ;
trtm_main_table[8].sol[8][2]  := 0 ;
trtm_main_table[8].sol[8][3]  := 0 ;
trtm_main_table[8].sol[8][4]  := 0 ;

trtm_main_table[8].sol[9][1]  := 0 ;
trtm_main_table[8].sol[9][2]  := 0 ;
trtm_main_table[8].sol[9][3]  := 0 ;
trtm_main_table[8].sol[9][4]  := 0 ;

trtm_main_table[8].sol[10][1]  := 2 ;
trtm_main_table[8].sol[10][2]  := 18;
trtm_main_table[8].sol[10][3]  := 37;
trtm_main_table[8].sol[10][4]  := 0 ;

trtm_main_table[8].sol[11][1]  := 24;
trtm_main_table[8].sol[11][2]  := 35;
trtm_main_table[8].sol[11][3]  := 0 ;
trtm_main_table[8].sol[11][4]  := 0 ;

trtm_main_table[8].sol[12][1]  := 7 ;
trtm_main_table[8].sol[12][2]  := 2 ;
trtm_main_table[8].sol[12][3]  := 35;
trtm_main_table[8].sol[12][4]  := 0 ;

trtm_main_table[8].sol[13][1]  := 34;
trtm_main_table[8].sol[13][2]  := 28;
trtm_main_table[8].sol[13][3]  := 35;
trtm_main_table[8].sol[13][4]  := 40;

trtm_main_table[8].sol[14][1]  := 9 ;
trtm_main_table[8].sol[14][2]  := 14;
trtm_main_table[8].sol[14][3]  := 17;
trtm_main_table[8].sol[14][4]  := 15;

trtm_main_table[8].sol[15][1]  := 0 ;
trtm_main_table[8].sol[15][2]  := 0 ;
trtm_main_table[8].sol[15][3]  := 0 ;
trtm_main_table[8].sol[15][4]  := 0 ;

trtm_main_table[8].sol[16][1]  := 35;
trtm_main_table[8].sol[16][2]  := 34;
trtm_main_table[8].sol[16][3]  := 38;
trtm_main_table[8].sol[16][4]  := 0 ;

trtm_main_table[8].sol[17][1]  := 35;
trtm_main_table[8].sol[17][2]  := 6 ;
trtm_main_table[8].sol[17][3]  := 4 ;
trtm_main_table[8].sol[17][4]  := 0 ;

trtm_main_table[8].sol[18][1]  := 0 ;
trtm_main_table[8].sol[18][2]  := 0 ;
trtm_main_table[8].sol[18][3]  := 0 ;
trtm_main_table[8].sol[18][4]  := 0 ;

trtm_main_table[8].sol[19][1]  := 0 ;
trtm_main_table[8].sol[19][2]  := 0 ;
trtm_main_table[8].sol[19][3]  := 0 ;
trtm_main_table[8].sol[19][4]  := 0 ;

trtm_main_table[8].sol[20][1]  := 0 ;
trtm_main_table[8].sol[20][2]  := 0 ;
trtm_main_table[8].sol[20][3]  := 0 ;
trtm_main_table[8].sol[20][4]  := 0 ;

trtm_main_table[8].sol[21][1]  := 30;
trtm_main_table[8].sol[21][2]  := 6 ;
trtm_main_table[8].sol[21][3]  := 0 ;
trtm_main_table[8].sol[21][4]  := 0 ;

trtm_main_table[8].sol[22][1]  := 0 ;
trtm_main_table[8].sol[22][2]  := 0 ;
trtm_main_table[8].sol[22][3]  := 0 ;
trtm_main_table[8].sol[22][4]  := 0 ;

trtm_main_table[8].sol[23][1]  := 10;
trtm_main_table[8].sol[23][2]  := 39;
trtm_main_table[8].sol[23][3]  := 35;
trtm_main_table[8].sol[23][4]  := 34;

trtm_main_table[8].sol[24][1]  := 0 ;
trtm_main_table[8].sol[24][2]  := 0 ;
trtm_main_table[8].sol[24][3]  := 0 ;
trtm_main_table[8].sol[24][4]  := 0 ;

trtm_main_table[8].sol[25][1]  := 35;
trtm_main_table[8].sol[25][2]  := 16;
trtm_main_table[8].sol[25][3]  := 32;
trtm_main_table[8].sol[25][4]  := 18;

trtm_main_table[8].sol[26][1]  := 35;
trtm_main_table[8].sol[26][2]  := 3 ;
trtm_main_table[8].sol[26][3]  := 0 ;
trtm_main_table[8].sol[26][4]  := 0 ;

trtm_main_table[8].sol[27][1]  := 2 ;
trtm_main_table[8].sol[27][2]  := 35;
trtm_main_table[8].sol[27][3]  := 16;
trtm_main_table[8].sol[27][4]  := 0 ;

trtm_main_table[8].sol[28][1]  := 0 ;
trtm_main_table[8].sol[28][2]  := 0 ;
trtm_main_table[8].sol[28][3]  := 0 ;
trtm_main_table[8].sol[28][4]  := 0 ;

trtm_main_table[8].sol[29][1]  := 35;
trtm_main_table[8].sol[29][2]  := 10;
trtm_main_table[8].sol[29][3]  := 25;
trtm_main_table[8].sol[29][4]  := 0 ;

trtm_main_table[8].sol[30][1]  := 34;
trtm_main_table[8].sol[30][2]  := 39;
trtm_main_table[8].sol[30][3]  := 19;
trtm_main_table[8].sol[30][4]  := 27;

trtm_main_table[8].sol[31][1]  := 30;
trtm_main_table[8].sol[31][2]  := 18;
trtm_main_table[8].sol[31][3]  := 35;
trtm_main_table[8].sol[31][4]  := 4 ;

trtm_main_table[8].sol[32][1]  := 35;
trtm_main_table[8].sol[32][2]  := 0 ;
trtm_main_table[8].sol[32][3]  := 0 ;
trtm_main_table[8].sol[32][4]  := 0 ;

trtm_main_table[8].sol[33][1]  := 0 ;
trtm_main_table[8].sol[33][2]  := 0 ;
trtm_main_table[8].sol[33][3]  := 0 ;
trtm_main_table[8].sol[33][4]  := 0 ;

trtm_main_table[8].sol[34][1]  := 1 ;
trtm_main_table[8].sol[34][2]  := 0 ;
trtm_main_table[8].sol[34][3]  := 0 ;
trtm_main_table[8].sol[34][4]  := 0 ;

trtm_main_table[8].sol[35][1]  := 0 ;
trtm_main_table[8].sol[35][2]  := 0 ;
trtm_main_table[8].sol[35][3]  := 0 ;
trtm_main_table[8].sol[35][4]  := 0 ;

trtm_main_table[8].sol[36][1]  := 1 ;
trtm_main_table[8].sol[36][2]  := 31;
trtm_main_table[8].sol[36][3]  := 0 ;
trtm_main_table[8].sol[36][4]  := 0 ;

trtm_main_table[8].sol[37][1]  := 2 ;
trtm_main_table[8].sol[37][2]  := 17;
trtm_main_table[8].sol[37][3]  := 26;
trtm_main_table[8].sol[37][4]  := 0 ;

trtm_main_table[8].sol[38][1]  := 0 ;
trtm_main_table[8].sol[38][2]  := 0 ;
trtm_main_table[8].sol[38][3]  := 0 ;
trtm_main_table[8].sol[38][4]  := 0 ;

trtm_main_table[8].sol[39][1]  := 35;
trtm_main_table[8].sol[39][2]  := 37;
trtm_main_table[8].sol[39][3]  := 10;
trtm_main_table[8].sol[39][4]  := 2 ;

trtm_main_table[9].id         := 9;
trtm_main_table[9].desc       := 'Скорость';


trtm_main_table[9].sol[1][1]  := 2 ;
trtm_main_table[9].sol[1][2]  := 28;
trtm_main_table[9].sol[1][3]  := 13;
trtm_main_table[9].sol[1][4]  := 38;

trtm_main_table[9].sol[2][1]  := 0 ;
trtm_main_table[9].sol[2][2]  := 0 ;
trtm_main_table[9].sol[2][3]  := 0 ;
trtm_main_table[9].sol[2][4]  := 0 ;

trtm_main_table[9].sol[3][1]  := 13;
trtm_main_table[9].sol[3][2]  := 14;
trtm_main_table[9].sol[3][3]  := 8 ;
trtm_main_table[9].sol[3][4]  := 0 ;

trtm_main_table[9].sol[4][1]  := 0 ;
trtm_main_table[9].sol[4][2]  := 0 ;
trtm_main_table[9].sol[4][3]  := 0 ;
trtm_main_table[9].sol[4][4]  := 0 ;

trtm_main_table[9].sol[5][1]  := 29;
trtm_main_table[9].sol[5][2]  := 30;
trtm_main_table[9].sol[5][3]  := 34;
trtm_main_table[9].sol[5][4]  := 0 ;

trtm_main_table[9].sol[6][1]  := 0 ;
trtm_main_table[9].sol[6][2]  := 0 ;
trtm_main_table[9].sol[6][3]  := 0 ;
trtm_main_table[9].sol[6][4]  := 0 ;

trtm_main_table[9].sol[7][1]  := 7 ;
trtm_main_table[9].sol[7][2]  := 29;
trtm_main_table[9].sol[7][3]  := 34;
trtm_main_table[9].sol[7][4]  := 0 ;

trtm_main_table[9].sol[8][1]  := 0 ;
trtm_main_table[9].sol[8][2]  := 0 ;
trtm_main_table[9].sol[8][3]  := 0 ;
trtm_main_table[9].sol[8][4]  := 0 ;

trtm_main_table[9].sol[9][1]  := 0 ;
trtm_main_table[9].sol[9][2]  := 0 ;
trtm_main_table[9].sol[9][3]  := 0 ;
trtm_main_table[9].sol[9][4]  := 0 ;

trtm_main_table[9].sol[10][1]  := 13;
trtm_main_table[9].sol[10][2]  := 28;
trtm_main_table[9].sol[10][3]  := 15;
trtm_main_table[9].sol[10][4]  := 19;

trtm_main_table[9].sol[11][1]  := 6 ;
trtm_main_table[9].sol[11][2]  := 18;
trtm_main_table[9].sol[11][3]  := 38;
trtm_main_table[9].sol[11][4]  := 40;

trtm_main_table[9].sol[12][1]  := 35;
trtm_main_table[9].sol[12][2]  := 15;
trtm_main_table[9].sol[12][3]  := 18;
trtm_main_table[9].sol[12][4]  := 34;

trtm_main_table[9].sol[13][1]  := 28;
trtm_main_table[9].sol[13][2]  := 33;
trtm_main_table[9].sol[13][3]  := 1 ;
trtm_main_table[9].sol[13][4]  := 18;

trtm_main_table[9].sol[14][1]  := 8 ;
trtm_main_table[9].sol[14][2]  := 3 ;
trtm_main_table[9].sol[14][3]  := 26;
trtm_main_table[9].sol[14][4]  := 14;

trtm_main_table[9].sol[15][1]  := 3 ;
trtm_main_table[9].sol[15][2]  := 19;
trtm_main_table[9].sol[15][3]  := 35;
trtm_main_table[9].sol[15][4]  := 5 ;

trtm_main_table[9].sol[16][1]  := 0 ;
trtm_main_table[9].sol[16][2]  := 0 ;
trtm_main_table[9].sol[16][3]  := 0 ;
trtm_main_table[9].sol[16][4]  := 0 ;

trtm_main_table[9].sol[17][1]  := 28;
trtm_main_table[9].sol[17][2]  := 30;
trtm_main_table[9].sol[17][3]  := 36;
trtm_main_table[9].sol[17][4]  := 2 ;

trtm_main_table[9].sol[18][1]  := 10;
trtm_main_table[9].sol[18][2]  := 13;
trtm_main_table[9].sol[18][3]  := 19;
trtm_main_table[9].sol[18][4]  := 0 ;

trtm_main_table[9].sol[19][1]  := 8 ;
trtm_main_table[9].sol[19][2]  := 15;
trtm_main_table[9].sol[19][3]  := 35;
trtm_main_table[9].sol[19][4]  := 38;

trtm_main_table[9].sol[20][1]  := 0 ;
trtm_main_table[9].sol[20][2]  := 0 ;
trtm_main_table[9].sol[20][3]  := 0 ;
trtm_main_table[9].sol[20][4]  := 0 ;

trtm_main_table[9].sol[21][1]  := 19;
trtm_main_table[9].sol[21][2]  := 35;
trtm_main_table[9].sol[21][3]  := 38;
trtm_main_table[9].sol[21][4]  := 2 ;

trtm_main_table[9].sol[22][1]  := 14;
trtm_main_table[9].sol[22][2]  := 20;
trtm_main_table[9].sol[22][3]  := 19;
trtm_main_table[9].sol[22][4]  := 35;

trtm_main_table[9].sol[23][1]  := 10;
trtm_main_table[9].sol[23][2]  := 13;
trtm_main_table[9].sol[23][3]  := 28;
trtm_main_table[9].sol[23][4]  := 38;

trtm_main_table[9].sol[24][1]  := 13;
trtm_main_table[9].sol[24][2]  := 26;
trtm_main_table[9].sol[24][3]  := 0 ;
trtm_main_table[9].sol[24][4]  := 0 ;

trtm_main_table[9].sol[25][1]  := 0 ;
trtm_main_table[9].sol[25][2]  := 0 ;
trtm_main_table[9].sol[25][3]  := 0 ;
trtm_main_table[9].sol[25][4]  := 0 ;

trtm_main_table[9].sol[26][1]  := 10;
trtm_main_table[9].sol[26][2]  := 19;
trtm_main_table[9].sol[26][3]  := 29;
trtm_main_table[9].sol[26][4]  := 38;

trtm_main_table[9].sol[27][1]  := 11;
trtm_main_table[9].sol[27][2]  := 35;
trtm_main_table[9].sol[27][3]  := 27;
trtm_main_table[9].sol[27][4]  := 28;

trtm_main_table[9].sol[28][1]  := 28;
trtm_main_table[9].sol[28][2]  := 32;
trtm_main_table[9].sol[28][3]  := 1 ;
trtm_main_table[9].sol[28][4]  := 24;

trtm_main_table[9].sol[29][1]  := 10;
trtm_main_table[9].sol[29][2]  := 28;
trtm_main_table[9].sol[29][3]  := 32;
trtm_main_table[9].sol[29][4]  := 25;

trtm_main_table[9].sol[30][1]  := 1 ;
trtm_main_table[9].sol[30][2]  := 28;
trtm_main_table[9].sol[30][3]  := 35;
trtm_main_table[9].sol[30][4]  := 23;

trtm_main_table[9].sol[31][1]  := 2 ;
trtm_main_table[9].sol[31][2]  := 24;
trtm_main_table[9].sol[31][3]  := 35;
trtm_main_table[9].sol[31][4]  := 21;

trtm_main_table[9].sol[32][1]  := 35;
trtm_main_table[9].sol[32][2]  := 13;
trtm_main_table[9].sol[32][3]  := 8 ;
trtm_main_table[9].sol[32][4]  := 1 ;

trtm_main_table[9].sol[33][1]  := 32;
trtm_main_table[9].sol[33][2]  := 28;
trtm_main_table[9].sol[33][3]  := 13;
trtm_main_table[9].sol[33][4]  := 12;

trtm_main_table[9].sol[34][1]  := 34;
trtm_main_table[9].sol[34][2]  := 2 ;
trtm_main_table[9].sol[34][3]  := 28;
trtm_main_table[9].sol[34][4]  := 27;

trtm_main_table[9].sol[35][1]  := 15;
trtm_main_table[9].sol[35][2]  := 10;
trtm_main_table[9].sol[35][3]  := 26;
trtm_main_table[9].sol[35][4]  := 0 ;

trtm_main_table[9].sol[36][1]  := 10;
trtm_main_table[9].sol[36][2]  := 28;
trtm_main_table[9].sol[36][3]  := 4 ;
trtm_main_table[9].sol[36][4]  := 34;

trtm_main_table[9].sol[37][1]  := 3 ;
trtm_main_table[9].sol[37][2]  := 34;
trtm_main_table[9].sol[37][3]  := 27;
trtm_main_table[9].sol[37][4]  := 16;

trtm_main_table[9].sol[38][1]  := 10;
trtm_main_table[9].sol[38][2]  := 18;
trtm_main_table[9].sol[38][3]  := 0 ;
trtm_main_table[9].sol[38][4]  := 0 ;

trtm_main_table[9].sol[39][1]  := 0 ;
trtm_main_table[9].sol[39][2]  := 0 ;
trtm_main_table[9].sol[39][3]  := 0 ;
trtm_main_table[9].sol[39][4]  := 0 ;

trtm_main_table[10].id         := 10 ;
trtm_main_table[10].desc       := 'Сила';


trtm_main_table[10].sol[1][1]  := 8 ;
trtm_main_table[10].sol[1][2]  := 1 ;
trtm_main_table[10].sol[1][3]  := 37;
trtm_main_table[10].sol[1][4]  := 18;

trtm_main_table[10].sol[2][1]  := 18;
trtm_main_table[10].sol[2][2]  := 13;
trtm_main_table[10].sol[2][3]  := 1 ;
trtm_main_table[10].sol[2][4]  := 28;

trtm_main_table[10].sol[3][1]  := 17;
trtm_main_table[10].sol[3][2]  := 19;
trtm_main_table[10].sol[3][3]  := 9 ;
trtm_main_table[10].sol[3][4]  := 36;

trtm_main_table[10].sol[4][1]  := 28;
trtm_main_table[10].sol[4][2]  := 10;
trtm_main_table[10].sol[4][3]  := 0 ;
trtm_main_table[10].sol[4][4]  := 0 ;

trtm_main_table[10].sol[5][1]  := 19;
trtm_main_table[10].sol[5][2]  := 10;
trtm_main_table[10].sol[5][3]  := 15;
trtm_main_table[10].sol[5][4]  := 0 ;

trtm_main_table[10].sol[6][1]  := 1 ;
trtm_main_table[10].sol[6][2]  := 18;
trtm_main_table[10].sol[6][3]  := 36;
trtm_main_table[10].sol[6][4]  := 37;

trtm_main_table[10].sol[7][1]  := 15;
trtm_main_table[10].sol[7][2]  := 9 ;
trtm_main_table[10].sol[7][3]  := 12;
trtm_main_table[10].sol[7][4]  := 37;

trtm_main_table[10].sol[8][1]  := 2 ;
trtm_main_table[10].sol[8][2]  := 36;
trtm_main_table[10].sol[8][3]  := 18;
trtm_main_table[10].sol[8][4]  := 37;

trtm_main_table[10].sol[9][1]  := 13;
trtm_main_table[10].sol[9][2]  := 28;
trtm_main_table[10].sol[9][3]  := 15;
trtm_main_table[10].sol[9][4]  := 12;

trtm_main_table[10].sol[10][1]  := 0 ;
trtm_main_table[10].sol[10][2]  := 0 ;
trtm_main_table[10].sol[10][3]  := 0 ;
trtm_main_table[10].sol[10][4]  := 0 ;

trtm_main_table[10].sol[11][1]  := 18;
trtm_main_table[10].sol[11][2]  := 21;
trtm_main_table[10].sol[11][3]  := 11;
trtm_main_table[10].sol[11][4]  := 0 ;

trtm_main_table[10].sol[12][1]  := 10;
trtm_main_table[10].sol[12][2]  := 35;
trtm_main_table[10].sol[12][3]  := 40;
trtm_main_table[10].sol[12][4]  := 34;

trtm_main_table[10].sol[13][1]  := 35;
trtm_main_table[10].sol[13][2]  := 10;
trtm_main_table[10].sol[13][3]  := 21;
trtm_main_table[10].sol[13][4]  := 0 ;

trtm_main_table[10].sol[14][1]  := 35;
trtm_main_table[10].sol[14][2]  := 10;
trtm_main_table[10].sol[14][3]  := 14;
trtm_main_table[10].sol[14][4]  := 27;

trtm_main_table[10].sol[15][1]  := 19;
trtm_main_table[10].sol[15][2]  := 2 ;
trtm_main_table[10].sol[15][3]  := 0 ;
trtm_main_table[10].sol[15][4]  := 0 ;

trtm_main_table[10].sol[16][1]  := 0 ;
trtm_main_table[10].sol[16][2]  := 0 ;
trtm_main_table[10].sol[16][3]  := 0 ;
trtm_main_table[10].sol[16][4]  := 0 ;

trtm_main_table[10].sol[17][1]  := 35;
trtm_main_table[10].sol[17][2]  := 10;
trtm_main_table[10].sol[17][3]  := 21;
trtm_main_table[10].sol[17][4]  := 0 ;

trtm_main_table[10].sol[18][1]  := 0 ;
trtm_main_table[10].sol[18][2]  := 0 ;
trtm_main_table[10].sol[18][3]  := 0 ;
trtm_main_table[10].sol[18][4]  := 0 ;

trtm_main_table[10].sol[19][1]  := 19;
trtm_main_table[10].sol[19][2]  := 17;
trtm_main_table[10].sol[19][3]  := 10;
trtm_main_table[10].sol[19][4]  := 0 ;

trtm_main_table[10].sol[20][1]  := 1 ;
trtm_main_table[10].sol[20][2]  := 16;
trtm_main_table[10].sol[20][3]  := 36;
trtm_main_table[10].sol[20][4]  := 37;

trtm_main_table[10].sol[21][1]  := 19;
trtm_main_table[10].sol[21][2]  := 35;
trtm_main_table[10].sol[21][3]  := 18;
trtm_main_table[10].sol[21][4]  := 37;

trtm_main_table[10].sol[22][1]  := 14;
trtm_main_table[10].sol[22][2]  := 15;
trtm_main_table[10].sol[22][3]  := 0 ;
trtm_main_table[10].sol[22][4]  := 0 ;

trtm_main_table[10].sol[23][1]  := 8 ;
trtm_main_table[10].sol[23][2]  := 35;
trtm_main_table[10].sol[23][3]  := 40;
trtm_main_table[10].sol[23][4]  := 5 ;

trtm_main_table[10].sol[24][1]  := 0 ;
trtm_main_table[10].sol[24][2]  := 0 ;
trtm_main_table[10].sol[24][3]  := 0 ;
trtm_main_table[10].sol[24][4]  := 0 ;

trtm_main_table[10].sol[25][1]  := 10;
trtm_main_table[10].sol[25][2]  := 37;
trtm_main_table[10].sol[25][3]  := 36;
trtm_main_table[10].sol[25][4]  := 0 ;

trtm_main_table[10].sol[26][1]  := 14;
trtm_main_table[10].sol[26][2]  := 29;
trtm_main_table[10].sol[26][3]  := 18;
trtm_main_table[10].sol[26][4]  := 36;

trtm_main_table[10].sol[27][1]  := 3 ;
trtm_main_table[10].sol[27][2]  := 35;
trtm_main_table[10].sol[27][3]  := 13;
trtm_main_table[10].sol[27][4]  := 21;

trtm_main_table[10].sol[28][1]  := 35;
trtm_main_table[10].sol[28][2]  := 10;
trtm_main_table[10].sol[28][3]  := 23;
trtm_main_table[10].sol[28][4]  := 24;

trtm_main_table[10].sol[29][1]  := 28;
trtm_main_table[10].sol[29][2]  := 29;
trtm_main_table[10].sol[29][3]  := 37;
trtm_main_table[10].sol[29][4]  := 36;

trtm_main_table[10].sol[30][1]  := 1 ;
trtm_main_table[10].sol[30][2]  := 35;
trtm_main_table[10].sol[30][3]  := 40;
trtm_main_table[10].sol[30][4]  := 18;

trtm_main_table[10].sol[31][1]  := 13;
trtm_main_table[10].sol[31][2]  := 3 ;
trtm_main_table[10].sol[31][3]  := 36;
trtm_main_table[10].sol[31][4]  := 24;

trtm_main_table[10].sol[32][1]  := 15;
trtm_main_table[10].sol[32][2]  := 37;
trtm_main_table[10].sol[32][3]  := 18;
trtm_main_table[10].sol[32][4]  := 1 ;

trtm_main_table[10].sol[33][1]  := 1 ;
trtm_main_table[10].sol[33][2]  := 28;
trtm_main_table[10].sol[33][3]  := 3 ;
trtm_main_table[10].sol[33][4]  := 25;

trtm_main_table[10].sol[34][1]  := 15;
trtm_main_table[10].sol[34][2]  := 1 ;
trtm_main_table[10].sol[34][3]  := 11;
trtm_main_table[10].sol[34][4]  := 0 ;

trtm_main_table[10].sol[35][1]  := 15;
trtm_main_table[10].sol[35][2]  := 17;
trtm_main_table[10].sol[35][3]  := 18;
trtm_main_table[10].sol[35][4]  := 20;

trtm_main_table[10].sol[36][1]  := 26;
trtm_main_table[10].sol[36][2]  := 35;
trtm_main_table[10].sol[36][3]  := 10;
trtm_main_table[10].sol[36][4]  := 18;

trtm_main_table[10].sol[37][1]  := 36;
trtm_main_table[10].sol[37][2]  := 37;
trtm_main_table[10].sol[37][3]  := 10;
trtm_main_table[10].sol[37][4]  := 19;

trtm_main_table[10].sol[38][1]  := 2 ;
trtm_main_table[10].sol[38][2]  := 35;
trtm_main_table[10].sol[38][3]  := 0 ;
trtm_main_table[10].sol[38][4]  := 0 ;

trtm_main_table[10].sol[39][1]  := 3 ;
trtm_main_table[10].sol[39][2]  := 28;
trtm_main_table[10].sol[39][3]  := 35;
trtm_main_table[10].sol[39][4]  := 37;

trtm_main_table[11].id         := 11;
trtm_main_table[11].desc       := 'Напряжение, давление';


trtm_main_table[11].sol[1][1]  := 10;
trtm_main_table[11].sol[1][2]  := 36;
trtm_main_table[11].sol[1][3]  := 37;
trtm_main_table[11].sol[1][4]  := 40;

trtm_main_table[11].sol[2][1]  := 13;
trtm_main_table[11].sol[2][2]  := 29;
trtm_main_table[11].sol[2][3]  := 10;
trtm_main_table[11].sol[2][4]  := 18;

trtm_main_table[11].sol[3][1]  := 35;
trtm_main_table[11].sol[3][2]  := 10;
trtm_main_table[11].sol[3][3]  := 36;
trtm_main_table[11].sol[3][4]  := 0 ;

trtm_main_table[11].sol[4][1]  := 35;
trtm_main_table[11].sol[4][2]  := 1 ;
trtm_main_table[11].sol[4][3]  := 4 ;
trtm_main_table[11].sol[4][4]  := 16;

trtm_main_table[11].sol[5][1]  := 10;
trtm_main_table[11].sol[5][2]  := 15;
trtm_main_table[11].sol[5][3]  := 36;
trtm_main_table[11].sol[5][4]  := 28;

trtm_main_table[11].sol[6][1]  := 10;
trtm_main_table[11].sol[6][2]  := 15;
trtm_main_table[11].sol[6][3]  := 36;
trtm_main_table[11].sol[6][4]  := 37;

trtm_main_table[11].sol[7][1]  := 6 ;
trtm_main_table[11].sol[7][2]  := 35;
trtm_main_table[11].sol[7][3]  := 10;
trtm_main_table[11].sol[7][4]  := 0 ;

trtm_main_table[11].sol[8][1]  := 35;
trtm_main_table[11].sol[8][2]  := 24;
trtm_main_table[11].sol[8][3]  := 0 ;
trtm_main_table[11].sol[8][4]  := 0 ;

trtm_main_table[11].sol[9][1]  := 6 ;
trtm_main_table[11].sol[9][2]  := 35;
trtm_main_table[11].sol[9][3]  := 36;
trtm_main_table[11].sol[9][4]  := 0 ;

trtm_main_table[11].sol[10][1]  := 36;
trtm_main_table[11].sol[10][2]  := 35;
trtm_main_table[11].sol[10][3]  := 21;
trtm_main_table[11].sol[10][4]  := 0 ;

trtm_main_table[11].sol[11][1]  := 0 ;
trtm_main_table[11].sol[11][2]  := 0 ;
trtm_main_table[11].sol[11][3]  := 0 ;
trtm_main_table[11].sol[11][4]  := 0 ;

trtm_main_table[11].sol[12][1]  := 35;
trtm_main_table[11].sol[12][2]  := 4 ;
trtm_main_table[11].sol[12][3]  := 15;
trtm_main_table[11].sol[12][4]  := 10;

trtm_main_table[11].sol[13][1]  := 35;
trtm_main_table[11].sol[13][2]  := 33;
trtm_main_table[11].sol[13][3]  := 2 ;
trtm_main_table[11].sol[13][4]  := 40;

trtm_main_table[11].sol[14][1]  := 9 ;
trtm_main_table[11].sol[14][2]  := 18;
trtm_main_table[11].sol[14][3]  := 3 ;
trtm_main_table[11].sol[14][4]  := 40;

trtm_main_table[11].sol[15][1]  := 19;
trtm_main_table[11].sol[15][2]  := 3 ;
trtm_main_table[11].sol[15][3]  := 27;
trtm_main_table[11].sol[15][4]  := 0 ;

trtm_main_table[11].sol[16][1]  := 0 ;
trtm_main_table[11].sol[16][2]  := 0 ;
trtm_main_table[11].sol[16][3]  := 0 ;
trtm_main_table[11].sol[16][4]  := 0 ;

trtm_main_table[11].sol[17][1]  := 35;
trtm_main_table[11].sol[17][2]  := 39;
trtm_main_table[11].sol[17][3]  := 19;
trtm_main_table[11].sol[17][4]  := 2 ;

trtm_main_table[11].sol[18][1]  := 0 ;
trtm_main_table[11].sol[18][2]  := 0 ;
trtm_main_table[11].sol[18][3]  := 0 ;
trtm_main_table[11].sol[18][4]  := 0 ;

trtm_main_table[11].sol[19][1]  := 14;
trtm_main_table[11].sol[19][2]  := 24;
trtm_main_table[11].sol[19][3]  := 10;
trtm_main_table[11].sol[19][4]  := 37;

trtm_main_table[11].sol[20][1]  := 0 ;
trtm_main_table[11].sol[20][2]  := 0 ;
trtm_main_table[11].sol[20][3]  := 0 ;
trtm_main_table[11].sol[20][4]  := 0 ;

trtm_main_table[11].sol[21][1]  := 10;
trtm_main_table[11].sol[21][2]  := 35;
trtm_main_table[11].sol[21][3]  := 14;
trtm_main_table[11].sol[21][4]  := 0 ;

trtm_main_table[11].sol[22][1]  := 2 ;
trtm_main_table[11].sol[22][2]  := 36;
trtm_main_table[11].sol[22][3]  := 25;
trtm_main_table[11].sol[22][4]  := 0 ;

trtm_main_table[11].sol[23][1]  := 10;
trtm_main_table[11].sol[23][2]  := 36;
trtm_main_table[11].sol[23][3]  := 3 ;
trtm_main_table[11].sol[23][4]  := 37;

trtm_main_table[11].sol[24][1]  := 0 ;
trtm_main_table[11].sol[24][2]  := 0 ;
trtm_main_table[11].sol[24][3]  := 0 ;
trtm_main_table[11].sol[24][4]  := 0 ;

trtm_main_table[11].sol[25][1]  := 37;
trtm_main_table[11].sol[25][2]  := 36;
trtm_main_table[11].sol[25][3]  := 4 ;
trtm_main_table[11].sol[25][4]  := 0 ;

trtm_main_table[11].sol[26][1]  := 10;
trtm_main_table[11].sol[26][2]  := 14;
trtm_main_table[11].sol[26][3]  := 36;
trtm_main_table[11].sol[26][4]  := 0 ;

trtm_main_table[11].sol[27][1]  := 10;
trtm_main_table[11].sol[27][2]  := 13;
trtm_main_table[11].sol[27][3]  := 19;
trtm_main_table[11].sol[27][4]  := 35;

trtm_main_table[11].sol[28][1]  := 6 ;
trtm_main_table[11].sol[28][2]  := 28;
trtm_main_table[11].sol[28][3]  := 35;
trtm_main_table[11].sol[28][4]  := 0 ;

trtm_main_table[11].sol[29][1]  := 3 ;
trtm_main_table[11].sol[29][2]  := 35;
trtm_main_table[11].sol[29][3]  := 0 ;
trtm_main_table[11].sol[29][4]  := 0 ;

trtm_main_table[11].sol[30][1]  := 22;
trtm_main_table[11].sol[30][2]  := 2 ;
trtm_main_table[11].sol[30][3]  := 37;
trtm_main_table[11].sol[30][4]  := 0 ;

trtm_main_table[11].sol[31][1]  := 2 ;
trtm_main_table[11].sol[31][2]  := 33;
trtm_main_table[11].sol[31][3]  := 27;
trtm_main_table[11].sol[31][4]  := 18;

trtm_main_table[11].sol[32][1]  := 1 ;
trtm_main_table[11].sol[32][2]  := 35;
trtm_main_table[11].sol[32][3]  := 16;
trtm_main_table[11].sol[32][4]  := 0 ;

trtm_main_table[11].sol[33][1]  := 11;
trtm_main_table[11].sol[33][2]  := 0 ;
trtm_main_table[11].sol[33][3]  := 0 ;
trtm_main_table[11].sol[33][4]  := 0 ;

trtm_main_table[11].sol[34][1]  := 2 ;
trtm_main_table[11].sol[34][2]  := 0 ;
trtm_main_table[11].sol[34][3]  := 0 ;
trtm_main_table[11].sol[34][4]  := 0 ;

trtm_main_table[11].sol[35][1]  := 35;
trtm_main_table[11].sol[35][2]  := 0 ;
trtm_main_table[11].sol[35][3]  := 0 ;
trtm_main_table[11].sol[35][4]  := 0 ;

trtm_main_table[11].sol[36][1]  := 19;
trtm_main_table[11].sol[36][2]  := 1 ;
trtm_main_table[11].sol[36][3]  := 35;
trtm_main_table[11].sol[36][4]  := 0 ;

trtm_main_table[11].sol[37][1]  := 2 ;
trtm_main_table[11].sol[37][2]  := 36;
trtm_main_table[11].sol[37][3]  := 37;
trtm_main_table[11].sol[37][4]  := 0 ;

trtm_main_table[11].sol[38][1]  := 35;
trtm_main_table[11].sol[38][2]  := 24;
trtm_main_table[11].sol[38][3]  := 0 ;
trtm_main_table[11].sol[38][4]  := 0 ;

trtm_main_table[11].sol[39][1]  := 10;
trtm_main_table[11].sol[39][2]  := 14;
trtm_main_table[11].sol[39][3]  := 35;
trtm_main_table[11].sol[39][4]  := 37;

trtm_main_table[12].id         := 12;
trtm_main_table[12].desc       := 'Форма';


trtm_main_table[12].sol[1][1]  := 8 ;
trtm_main_table[12].sol[1][2]  := 10;
trtm_main_table[12].sol[1][3]  := 29;
trtm_main_table[12].sol[1][4]  := 40;

trtm_main_table[12].sol[2][1]  := 15;
trtm_main_table[12].sol[2][2]  := 10;
trtm_main_table[12].sol[2][3]  := 26;
trtm_main_table[12].sol[2][4]  := 3 ;

trtm_main_table[12].sol[3][1]  := 29;
trtm_main_table[12].sol[3][2]  := 34;
trtm_main_table[12].sol[3][3]  := 5 ;
trtm_main_table[12].sol[3][4]  := 4 ;

trtm_main_table[12].sol[4][1]  := 13;
trtm_main_table[12].sol[4][2]  := 14;
trtm_main_table[12].sol[4][3]  := 10;
trtm_main_table[12].sol[4][4]  := 7 ;

trtm_main_table[12].sol[5][1]  := 5 ;
trtm_main_table[12].sol[5][2]  := 34;
trtm_main_table[12].sol[5][3]  := 4 ;
trtm_main_table[12].sol[5][4]  := 10;

trtm_main_table[12].sol[6][1]  := 0 ;
trtm_main_table[12].sol[6][2]  := 0 ;
trtm_main_table[12].sol[6][3]  := 0 ;
trtm_main_table[12].sol[6][4]  := 0 ;

trtm_main_table[12].sol[7][1]  := 14;
trtm_main_table[12].sol[7][2]  := 4 ;
trtm_main_table[12].sol[7][3]  := 15;
trtm_main_table[12].sol[7][4]  := 22;

trtm_main_table[12].sol[8][1]  := 7 ;
trtm_main_table[12].sol[8][2]  := 2 ;
trtm_main_table[12].sol[8][3]  := 35;
trtm_main_table[12].sol[8][4]  := 0 ;

trtm_main_table[12].sol[9][1]  := 35;
trtm_main_table[12].sol[9][2]  := 15;
trtm_main_table[12].sol[9][3]  := 34;
trtm_main_table[12].sol[9][4]  := 18;

trtm_main_table[12].sol[10][1]  := 35;
trtm_main_table[12].sol[10][2]  := 10;
trtm_main_table[12].sol[10][3]  := 37;
trtm_main_table[12].sol[10][4]  := 40;

trtm_main_table[12].sol[11][1]  := 34;
trtm_main_table[12].sol[11][2]  := 15;
trtm_main_table[12].sol[11][3]  := 10;
trtm_main_table[12].sol[11][4]  := 14;

trtm_main_table[12].sol[12][1]  := 0 ;
trtm_main_table[12].sol[12][2]  := 0 ;
trtm_main_table[12].sol[12][3]  := 0 ;
trtm_main_table[12].sol[12][4]  := 0 ;

trtm_main_table[12].sol[13][1]  := 33;
trtm_main_table[12].sol[13][2]  := 1 ;
trtm_main_table[12].sol[13][3]  := 18;
trtm_main_table[12].sol[13][4]  := 4 ;

trtm_main_table[12].sol[14][1]  := 30;
trtm_main_table[12].sol[14][2]  := 14;
trtm_main_table[12].sol[14][3]  := 10;
trtm_main_table[12].sol[14][4]  := 40;

trtm_main_table[12].sol[15][1]  := 14;
trtm_main_table[12].sol[15][2]  := 26;
trtm_main_table[12].sol[15][3]  := 9 ;
trtm_main_table[12].sol[15][4]  := 25;

trtm_main_table[12].sol[16][1]  := 0 ;
trtm_main_table[12].sol[16][2]  := 0 ;
trtm_main_table[12].sol[16][3]  := 0 ;
trtm_main_table[12].sol[16][4]  := 0 ;

trtm_main_table[12].sol[17][1]  := 22;
trtm_main_table[12].sol[17][2]  := 14;
trtm_main_table[12].sol[17][3]  := 19;
trtm_main_table[12].sol[17][4]  := 32;

trtm_main_table[12].sol[18][1]  := 13;
trtm_main_table[12].sol[18][2]  := 15;
trtm_main_table[12].sol[18][3]  := 32;
trtm_main_table[12].sol[18][4]  := 0 ;

trtm_main_table[12].sol[19][1]  := 2 ;
trtm_main_table[12].sol[19][2]  := 6 ;
trtm_main_table[12].sol[19][3]  := 34;
trtm_main_table[12].sol[19][4]  := 14;

trtm_main_table[12].sol[20][1]  := 0 ;
trtm_main_table[12].sol[20][2]  := 0 ;
trtm_main_table[12].sol[20][3]  := 0 ;
trtm_main_table[12].sol[20][4]  := 0 ;

trtm_main_table[12].sol[21][1]  := 4 ;
trtm_main_table[12].sol[21][2]  := 6 ;
trtm_main_table[12].sol[21][3]  := 2 ;
trtm_main_table[12].sol[21][4]  := 0 ;

trtm_main_table[12].sol[22][1]  := 14;
trtm_main_table[12].sol[22][2]  := 0 ;
trtm_main_table[12].sol[22][3]  := 0 ;
trtm_main_table[12].sol[22][4]  := 0 ;

trtm_main_table[12].sol[23][1]  := 35;
trtm_main_table[12].sol[23][2]  := 29;
trtm_main_table[12].sol[23][3]  := 3 ;
trtm_main_table[12].sol[23][4]  := 5 ;

trtm_main_table[12].sol[24][1]  := 0 ;
trtm_main_table[12].sol[24][2]  := 0 ;
trtm_main_table[12].sol[24][3]  := 0 ;
trtm_main_table[12].sol[24][4]  := 0 ;

trtm_main_table[12].sol[25][1]  := 14;
trtm_main_table[12].sol[25][2]  := 10;
trtm_main_table[12].sol[25][3]  := 34;
trtm_main_table[12].sol[25][4]  := 17;

trtm_main_table[12].sol[26][1]  := 36;
trtm_main_table[12].sol[26][2]  := 22;
trtm_main_table[12].sol[26][3]  := 0 ;
trtm_main_table[12].sol[26][4]  := 0 ;

trtm_main_table[12].sol[27][1]  := 10;
trtm_main_table[12].sol[27][2]  := 40;
trtm_main_table[12].sol[27][3]  := 16;
trtm_main_table[12].sol[27][4]  := 0 ;

trtm_main_table[12].sol[28][1]  := 28;
trtm_main_table[12].sol[28][2]  := 32;
trtm_main_table[12].sol[28][3]  := 1 ;
trtm_main_table[12].sol[28][4]  := 0 ;

trtm_main_table[12].sol[29][1]  := 32;
trtm_main_table[12].sol[29][2]  := 30;
trtm_main_table[12].sol[29][3]  := 40;
trtm_main_table[12].sol[29][4]  := 0 ;

trtm_main_table[12].sol[30][1]  := 22;
trtm_main_table[12].sol[30][2]  := 1 ;
trtm_main_table[12].sol[30][3]  := 2 ;
trtm_main_table[12].sol[30][4]  := 35;

trtm_main_table[12].sol[31][1]  := 35;
trtm_main_table[12].sol[31][2]  := 1 ;
trtm_main_table[12].sol[31][3]  := 0 ;
trtm_main_table[12].sol[31][4]  := 0 ;

trtm_main_table[12].sol[32][1]  := 1 ;
trtm_main_table[12].sol[32][2]  := 32;
trtm_main_table[12].sol[32][3]  := 17;
trtm_main_table[12].sol[32][4]  := 28;

trtm_main_table[12].sol[33][1]  := 32;
trtm_main_table[12].sol[33][2]  := 15;
trtm_main_table[12].sol[33][3]  := 26;
trtm_main_table[12].sol[33][4]  := 0 ;

trtm_main_table[12].sol[34][1]  := 2 ;
trtm_main_table[12].sol[34][2]  := 13;
trtm_main_table[12].sol[34][3]  := 1 ;
trtm_main_table[12].sol[34][4]  := 0 ;

trtm_main_table[12].sol[35][1]  := 1 ;
trtm_main_table[12].sol[35][2]  := 15;
trtm_main_table[12].sol[35][3]  := 29;
trtm_main_table[12].sol[35][4]  := 0 ;

trtm_main_table[12].sol[36][1]  := 16;
trtm_main_table[12].sol[36][2]  := 29;
trtm_main_table[12].sol[36][3]  := 1 ;
trtm_main_table[12].sol[36][4]  := 28;

trtm_main_table[12].sol[37][1]  := 15;
trtm_main_table[12].sol[37][2]  := 13;
trtm_main_table[12].sol[37][3]  := 39;
trtm_main_table[12].sol[37][4]  := 0 ;

trtm_main_table[12].sol[38][1]  := 15;
trtm_main_table[12].sol[38][2]  := 1 ;
trtm_main_table[12].sol[38][3]  := 32;
trtm_main_table[12].sol[38][4]  := 0 ;

trtm_main_table[12].sol[39][1]  := 17;
trtm_main_table[12].sol[39][2]  := 26;
trtm_main_table[12].sol[39][3]  := 34;
trtm_main_table[12].sol[39][4]  := 10;

trtm_main_table[13].id         := 13;
trtm_main_table[13].desc       := 'Устойчивость состава объекта';


trtm_main_table[13].sol[1][1]  := 21;
trtm_main_table[13].sol[1][2]  := 35;
trtm_main_table[13].sol[1][3]  := 2 ;
trtm_main_table[13].sol[1][4]  := 39;

trtm_main_table[13].sol[2][1]  := 26;
trtm_main_table[13].sol[2][2]  := 39;
trtm_main_table[13].sol[2][3]  := 1 ;
trtm_main_table[13].sol[2][4]  := 40;

trtm_main_table[13].sol[3][1]  := 13;
trtm_main_table[13].sol[3][2]  := 15;
trtm_main_table[13].sol[3][3]  := 1 ;
trtm_main_table[13].sol[3][4]  := 28;

trtm_main_table[13].sol[4][1]  := 37;
trtm_main_table[13].sol[4][2]  := 0 ;
trtm_main_table[13].sol[4][3]  := 0 ;
trtm_main_table[13].sol[4][4]  := 0 ;

trtm_main_table[13].sol[5][1]  := 2 ;
trtm_main_table[13].sol[5][2]  := 11;
trtm_main_table[13].sol[5][3]  := 13;
trtm_main_table[13].sol[5][4]  := 0 ;

trtm_main_table[13].sol[6][1]  := 39;
trtm_main_table[13].sol[6][2]  := 0 ;
trtm_main_table[13].sol[6][3]  := 0 ;
trtm_main_table[13].sol[6][4]  := 0 ;

trtm_main_table[13].sol[7][1]  := 28;
trtm_main_table[13].sol[7][2]  := 10;
trtm_main_table[13].sol[7][3]  := 19;
trtm_main_table[13].sol[7][4]  := 39;

trtm_main_table[13].sol[8][1]  := 34;
trtm_main_table[13].sol[8][2]  := 28;
trtm_main_table[13].sol[8][3]  := 35;
trtm_main_table[13].sol[8][4]  := 40;

trtm_main_table[13].sol[9][1]  := 33;
trtm_main_table[13].sol[9][2]  := 15;
trtm_main_table[13].sol[9][3]  := 28;
trtm_main_table[13].sol[9][4]  := 18;

trtm_main_table[13].sol[10][1]  := 10;
trtm_main_table[13].sol[10][2]  := 35;
trtm_main_table[13].sol[10][3]  := 21;
trtm_main_table[13].sol[10][4]  := 16;

trtm_main_table[13].sol[11][1]  := 2 ;
trtm_main_table[13].sol[11][2]  := 35;
trtm_main_table[13].sol[11][3]  := 40;
trtm_main_table[13].sol[11][4]  := 0 ;

trtm_main_table[13].sol[12][1]  := 22;
trtm_main_table[13].sol[12][2]  := 1 ;
trtm_main_table[13].sol[12][3]  := 18;
trtm_main_table[13].sol[12][4]  := 4 ;

trtm_main_table[13].sol[13][1]  := 0 ;
trtm_main_table[13].sol[13][2]  := 0 ;
trtm_main_table[13].sol[13][3]  := 0 ;
trtm_main_table[13].sol[13][4]  := 0 ;

trtm_main_table[13].sol[14][1]  := 17;
trtm_main_table[13].sol[14][2]  := 9 ;
trtm_main_table[13].sol[14][3]  := 15;
trtm_main_table[13].sol[14][4]  := 0 ;

trtm_main_table[13].sol[15][1]  := 13;
trtm_main_table[13].sol[15][2]  := 27;
trtm_main_table[13].sol[15][3]  := 10;
trtm_main_table[13].sol[15][4]  := 35;

trtm_main_table[13].sol[16][1]  := 39;
trtm_main_table[13].sol[16][2]  := 3 ;
trtm_main_table[13].sol[16][3]  := 35;
trtm_main_table[13].sol[16][4]  := 23;

trtm_main_table[13].sol[17][1]  := 35;
trtm_main_table[13].sol[17][2]  := 1 ;
trtm_main_table[13].sol[17][3]  := 32;
trtm_main_table[13].sol[17][4]  := 0 ;

trtm_main_table[13].sol[18][1]  := 32;
trtm_main_table[13].sol[18][2]  := 3 ;
trtm_main_table[13].sol[18][3]  := 27;
trtm_main_table[13].sol[18][4]  := 15;

trtm_main_table[13].sol[19][1]  := 13;
trtm_main_table[13].sol[19][2]  := 19;
trtm_main_table[13].sol[19][3]  := 0 ;
trtm_main_table[13].sol[19][4]  := 0 ;

trtm_main_table[13].sol[20][1]  := 27;
trtm_main_table[13].sol[20][2]  := 4 ;
trtm_main_table[13].sol[20][3]  := 29;
trtm_main_table[13].sol[20][4]  := 18;

trtm_main_table[13].sol[21][1]  := 32;
trtm_main_table[13].sol[21][2]  := 35;
trtm_main_table[13].sol[21][3]  := 27;
trtm_main_table[13].sol[21][4]  := 31;

trtm_main_table[13].sol[22][1]  := 14;
trtm_main_table[13].sol[22][2]  := 2 ;
trtm_main_table[13].sol[22][3]  := 39;
trtm_main_table[13].sol[22][4]  := 6 ;

trtm_main_table[13].sol[23][1]  := 2 ;
trtm_main_table[13].sol[23][2]  := 14;
trtm_main_table[13].sol[23][3]  := 30;
trtm_main_table[13].sol[23][4]  := 40;

trtm_main_table[13].sol[24][1]  := 0 ;
trtm_main_table[13].sol[24][2]  := 0 ;
trtm_main_table[13].sol[24][3]  := 0 ;
trtm_main_table[13].sol[24][4]  := 0 ;

trtm_main_table[13].sol[25][1]  := 35;
trtm_main_table[13].sol[25][2]  := 27;
trtm_main_table[13].sol[25][3]  := 0 ;
trtm_main_table[13].sol[25][4]  := 0 ;

trtm_main_table[13].sol[26][1]  := 15;
trtm_main_table[13].sol[26][2]  := 32;
trtm_main_table[13].sol[26][3]  := 35;
trtm_main_table[13].sol[26][4]  := 0 ;

trtm_main_table[13].sol[27][1]  := 0 ;
trtm_main_table[13].sol[27][2]  := 0 ;
trtm_main_table[13].sol[27][3]  := 0 ;
trtm_main_table[13].sol[27][4]  := 0 ;

trtm_main_table[13].sol[28][1]  := 13;
trtm_main_table[13].sol[28][2]  := 0 ;
trtm_main_table[13].sol[28][3]  := 0 ;
trtm_main_table[13].sol[28][4]  := 0 ;

trtm_main_table[13].sol[29][1]  := 18;
trtm_main_table[13].sol[29][2]  := 0 ;
trtm_main_table[13].sol[29][3]  := 0 ;
trtm_main_table[13].sol[29][4]  := 0 ;

trtm_main_table[13].sol[30][1]  := 35;
trtm_main_table[13].sol[30][2]  := 24;
trtm_main_table[13].sol[30][3]  := 18;
trtm_main_table[13].sol[30][4]  := 30;

trtm_main_table[13].sol[31][1]  := 35;
trtm_main_table[13].sol[31][2]  := 40;
trtm_main_table[13].sol[31][3]  := 27;
trtm_main_table[13].sol[31][4]  := 39;

trtm_main_table[13].sol[32][1]  := 35;
trtm_main_table[13].sol[32][2]  := 19;
trtm_main_table[13].sol[32][3]  := 0 ;
trtm_main_table[13].sol[32][4]  := 0 ;

trtm_main_table[13].sol[33][1]  := 32;
trtm_main_table[13].sol[33][2]  := 35;
trtm_main_table[13].sol[33][3]  := 30;
trtm_main_table[13].sol[33][4]  := 0 ;

trtm_main_table[13].sol[34][1]  := 2 ;
trtm_main_table[13].sol[34][2]  := 35;
trtm_main_table[13].sol[34][3]  := 10;
trtm_main_table[13].sol[34][4]  := 16;

trtm_main_table[13].sol[35][1]  := 35;
trtm_main_table[13].sol[35][2]  := 30;
trtm_main_table[13].sol[35][3]  := 34;
trtm_main_table[13].sol[35][4]  := 2 ;

trtm_main_table[13].sol[36][1]  := 2 ;
trtm_main_table[13].sol[36][2]  := 35;
trtm_main_table[13].sol[36][3]  := 22;
trtm_main_table[13].sol[36][4]  := 26;

trtm_main_table[13].sol[37][1]  := 35;
trtm_main_table[13].sol[37][2]  := 22;
trtm_main_table[13].sol[37][3]  := 39;
trtm_main_table[13].sol[37][4]  := 23;

trtm_main_table[13].sol[38][1]  := 1 ;
trtm_main_table[13].sol[38][2]  := 8 ;
trtm_main_table[13].sol[38][3]  := 35;
trtm_main_table[13].sol[38][4]  := 0 ;

trtm_main_table[13].sol[39][1]  := 23;
trtm_main_table[13].sol[39][2]  := 35;
trtm_main_table[13].sol[39][3]  := 40;
trtm_main_table[13].sol[39][4]  := 3 ;

trtm_main_table[14].id         := 14;
trtm_main_table[14].desc       := 'Прочность';


trtm_main_table[14].sol[1][1]  := 1 ;
trtm_main_table[14].sol[1][2]  := 8 ;
trtm_main_table[14].sol[1][3]  := 40;
trtm_main_table[14].sol[1][4]  := 15;

trtm_main_table[14].sol[2][1]  := 40;
trtm_main_table[14].sol[2][2]  := 26;
trtm_main_table[14].sol[2][3]  := 27;
trtm_main_table[14].sol[2][4]  := 1 ;

trtm_main_table[14].sol[3][1]  := 1 ;
trtm_main_table[14].sol[3][2]  := 15;
trtm_main_table[14].sol[3][3]  := 8 ;
trtm_main_table[14].sol[3][4]  := 35;

trtm_main_table[14].sol[4][1]  := 15;
trtm_main_table[14].sol[4][2]  := 14;
trtm_main_table[14].sol[4][3]  := 28;
trtm_main_table[14].sol[4][4]  := 26;

trtm_main_table[14].sol[5][1]  := 3 ;
trtm_main_table[14].sol[5][2]  := 34;
trtm_main_table[14].sol[5][3]  := 40;
trtm_main_table[14].sol[5][4]  := 29;

trtm_main_table[14].sol[6][1]  := 9 ;
trtm_main_table[14].sol[6][2]  := 40;
trtm_main_table[14].sol[6][3]  := 28;
trtm_main_table[14].sol[6][4]  := 0 ;

trtm_main_table[14].sol[7][1]  := 10;
trtm_main_table[14].sol[7][2]  := 15;
trtm_main_table[14].sol[7][3]  := 14;
trtm_main_table[14].sol[7][4]  := 7 ;

trtm_main_table[14].sol[8][1]  := 9 ;
trtm_main_table[14].sol[8][2]  := 14;
trtm_main_table[14].sol[8][3]  := 17;
trtm_main_table[14].sol[8][4]  := 15;

trtm_main_table[14].sol[9][1]  := 8 ;
trtm_main_table[14].sol[9][2]  := 13;
trtm_main_table[14].sol[9][3]  := 26;
trtm_main_table[14].sol[9][4]  := 14;

trtm_main_table[14].sol[10][1]  := 10;
trtm_main_table[14].sol[10][2]  := 18;
trtm_main_table[14].sol[10][3]  := 3 ;
trtm_main_table[14].sol[10][4]  := 14;

trtm_main_table[14].sol[11][1]  := 10;
trtm_main_table[14].sol[11][2]  := 3 ;
trtm_main_table[14].sol[11][3]  := 18;
trtm_main_table[14].sol[11][4]  := 40;

trtm_main_table[14].sol[12][1]  := 10;
trtm_main_table[14].sol[12][2]  := 30;
trtm_main_table[14].sol[12][3]  := 35;
trtm_main_table[14].sol[12][4]  := 40;

trtm_main_table[14].sol[13][1]  := 13;
trtm_main_table[14].sol[13][2]  := 17;
trtm_main_table[14].sol[13][3]  := 35;
trtm_main_table[14].sol[13][4]  := 0 ;

trtm_main_table[14].sol[14][1]  := 0 ;
trtm_main_table[14].sol[14][2]  := 0 ;
trtm_main_table[14].sol[14][3]  := 0 ;
trtm_main_table[14].sol[14][4]  := 0 ;

trtm_main_table[14].sol[15][1]  := 27;
trtm_main_table[14].sol[15][2]  := 3 ;
trtm_main_table[14].sol[15][3]  := 26;
trtm_main_table[14].sol[15][4]  := 0 ;

trtm_main_table[14].sol[16][1]  := 0 ;
trtm_main_table[14].sol[16][2]  := 0 ;
trtm_main_table[14].sol[16][3]  := 0 ;
trtm_main_table[14].sol[16][4]  := 0 ;

trtm_main_table[14].sol[17][1]  := 30;
trtm_main_table[14].sol[17][2]  := 10;
trtm_main_table[14].sol[17][3]  := 40;
trtm_main_table[14].sol[17][4]  := 0 ;

trtm_main_table[14].sol[18][1]  := 35;
trtm_main_table[14].sol[18][2]  := 19;
trtm_main_table[14].sol[18][3]  := 0 ;
trtm_main_table[14].sol[18][4]  := 0 ;

trtm_main_table[14].sol[19][1]  := 19;
trtm_main_table[14].sol[19][2]  := 35;
trtm_main_table[14].sol[19][3]  := 10;
trtm_main_table[14].sol[19][4]  := 0 ;

trtm_main_table[14].sol[20][1]  := 35;
trtm_main_table[14].sol[20][2]  := 0 ;
trtm_main_table[14].sol[20][3]  := 0 ;
trtm_main_table[14].sol[20][4]  := 0 ;

trtm_main_table[14].sol[21][1]  := 10;
trtm_main_table[14].sol[21][2]  := 26;
trtm_main_table[14].sol[21][3]  := 35;
trtm_main_table[14].sol[21][4]  := 28;

trtm_main_table[14].sol[22][1]  := 35;
trtm_main_table[14].sol[22][2]  := 0 ;
trtm_main_table[14].sol[22][3]  := 0 ;
trtm_main_table[14].sol[22][4]  := 0 ;

trtm_main_table[14].sol[23][1]  := 35;
trtm_main_table[14].sol[23][2]  := 28;
trtm_main_table[14].sol[23][3]  := 31;
trtm_main_table[14].sol[23][4]  := 40;

trtm_main_table[14].sol[24][1]  := 0 ;
trtm_main_table[14].sol[24][2]  := 0 ;
trtm_main_table[14].sol[24][3]  := 0 ;
trtm_main_table[14].sol[24][4]  := 0 ;

trtm_main_table[14].sol[25][1]  := 29;
trtm_main_table[14].sol[25][2]  := 3 ;
trtm_main_table[14].sol[25][3]  := 28;
trtm_main_table[14].sol[25][4]  := 10;

trtm_main_table[14].sol[26][1]  := 29;
trtm_main_table[14].sol[26][2]  := 10;
trtm_main_table[14].sol[26][3]  := 27;
trtm_main_table[14].sol[26][4]  := 0 ;

trtm_main_table[14].sol[27][1]  := 11;
trtm_main_table[14].sol[27][2]  := 3 ;
trtm_main_table[14].sol[27][3]  := 0 ;
trtm_main_table[14].sol[27][4]  := 0 ;

trtm_main_table[14].sol[28][1]  := 3 ;
trtm_main_table[14].sol[28][2]  := 27;
trtm_main_table[14].sol[28][3]  := 16;
trtm_main_table[14].sol[28][4]  := 0 ;

trtm_main_table[14].sol[29][1]  := 3 ;
trtm_main_table[14].sol[29][2]  := 27;
trtm_main_table[14].sol[29][3]  := 0 ;
trtm_main_table[14].sol[29][4]  := 0 ;

trtm_main_table[14].sol[30][1]  := 18;
trtm_main_table[14].sol[30][2]  := 35;
trtm_main_table[14].sol[30][3]  := 37;
trtm_main_table[14].sol[30][4]  := 1 ;

trtm_main_table[14].sol[31][1]  := 15;
trtm_main_table[14].sol[31][2]  := 35;
trtm_main_table[14].sol[31][3]  := 22;
trtm_main_table[14].sol[31][4]  := 2 ;

trtm_main_table[14].sol[32][1]  := 11;
trtm_main_table[14].sol[32][2]  := 3 ;
trtm_main_table[14].sol[32][3]  := 10;
trtm_main_table[14].sol[32][4]  := 32;

trtm_main_table[14].sol[33][1]  := 32;
trtm_main_table[14].sol[33][2]  := 40;
trtm_main_table[14].sol[33][3]  := 28;
trtm_main_table[14].sol[33][4]  := 2 ;

trtm_main_table[14].sol[34][1]  := 27;
trtm_main_table[14].sol[34][2]  := 11;
trtm_main_table[14].sol[34][3]  := 3 ;
trtm_main_table[14].sol[34][4]  := 0 ;

trtm_main_table[14].sol[35][1]  := 15;
trtm_main_table[14].sol[35][2]  := 3 ;
trtm_main_table[14].sol[35][3]  := 32;
trtm_main_table[14].sol[35][4]  := 0 ;

trtm_main_table[14].sol[36][1]  := 2 ;
trtm_main_table[14].sol[36][2]  := 13;
trtm_main_table[14].sol[36][3]  := 28;
trtm_main_table[14].sol[36][4]  := 0 ;

trtm_main_table[14].sol[37][1]  := 27;
trtm_main_table[14].sol[37][2]  := 3 ;
trtm_main_table[14].sol[37][3]  := 15;
trtm_main_table[14].sol[37][4]  := 40;

trtm_main_table[14].sol[38][1]  := 15;
trtm_main_table[14].sol[38][2]  := 0 ;
trtm_main_table[14].sol[38][3]  := 0 ;
trtm_main_table[14].sol[38][4]  := 0 ;

trtm_main_table[14].sol[39][1]  := 29;
trtm_main_table[14].sol[39][2]  := 35;
trtm_main_table[14].sol[39][3]  := 10;
trtm_main_table[14].sol[39][4]  := 14;

trtm_main_table[15].id         := 15;
trtm_main_table[15].desc       := 'Время действия подвижного объекта';


trtm_main_table[15].sol[1][1]  := 19;
trtm_main_table[15].sol[1][2]  := 5 ;
trtm_main_table[15].sol[1][3]  := 34;
trtm_main_table[15].sol[1][4]  := 31;

trtm_main_table[15].sol[2][1]  := 0 ;
trtm_main_table[15].sol[2][2]  := 0 ;
trtm_main_table[15].sol[2][3]  := 0 ;
trtm_main_table[15].sol[2][4]  := 0 ;

trtm_main_table[15].sol[3][1]  := 2 ;
trtm_main_table[15].sol[3][2]  := 19;
trtm_main_table[15].sol[3][3]  := 9 ;
trtm_main_table[15].sol[3][4]  := 0 ;

trtm_main_table[15].sol[4][1]  := 0 ;
trtm_main_table[15].sol[4][2]  := 0 ;
trtm_main_table[15].sol[4][3]  := 0 ;
trtm_main_table[15].sol[4][4]  := 0 ;

trtm_main_table[15].sol[5][1]  := 3 ;
trtm_main_table[15].sol[5][2]  := 17;
trtm_main_table[15].sol[5][3]  := 19;
trtm_main_table[15].sol[5][4]  := 0 ;

trtm_main_table[15].sol[6][1]  := 0 ;
trtm_main_table[15].sol[6][2]  := 0 ;
trtm_main_table[15].sol[6][3]  := 0 ;
trtm_main_table[15].sol[6][4]  := 0 ;

trtm_main_table[15].sol[7][1]  := 10;
trtm_main_table[15].sol[7][2]  := 2 ;
trtm_main_table[15].sol[7][3]  := 19;
trtm_main_table[15].sol[7][4]  := 30;

trtm_main_table[15].sol[8][1]  := 0 ;
trtm_main_table[15].sol[8][2]  := 0 ;
trtm_main_table[15].sol[8][3]  := 0 ;
trtm_main_table[15].sol[8][4]  := 0 ;

trtm_main_table[15].sol[9][1]  := 3 ;
trtm_main_table[15].sol[9][2]  := 35;
trtm_main_table[15].sol[9][3]  := 5 ;
trtm_main_table[15].sol[9][4]  := 0 ;

trtm_main_table[15].sol[10][1]  := 19;
trtm_main_table[15].sol[10][2]  := 2 ;
trtm_main_table[15].sol[10][3]  := 16;
trtm_main_table[15].sol[10][4]  := 0 ;

trtm_main_table[15].sol[11][1]  := 19;
trtm_main_table[15].sol[11][2]  := 3 ;
trtm_main_table[15].sol[11][3]  := 27;
trtm_main_table[15].sol[11][4]  := 0 ;

trtm_main_table[15].sol[12][1]  := 14;
trtm_main_table[15].sol[12][2]  := 26;
trtm_main_table[15].sol[12][3]  := 28;
trtm_main_table[15].sol[12][4]  := 25;

trtm_main_table[15].sol[13][1]  := 13;
trtm_main_table[15].sol[13][2]  := 3 ;
trtm_main_table[15].sol[13][3]  := 35;
trtm_main_table[15].sol[13][4]  := 0 ;

trtm_main_table[15].sol[14][1]  := 27;
trtm_main_table[15].sol[14][2]  := 3 ;
trtm_main_table[15].sol[14][3]  := 10;
trtm_main_table[15].sol[14][4]  := 0 ;

trtm_main_table[15].sol[15][1]  := 0 ;
trtm_main_table[15].sol[15][2]  := 0 ;
trtm_main_table[15].sol[15][3]  := 0 ;
trtm_main_table[15].sol[15][4]  := 0 ;

trtm_main_table[15].sol[16][1]  := 0 ;
trtm_main_table[15].sol[16][2]  := 0 ;
trtm_main_table[15].sol[16][3]  := 0 ;
trtm_main_table[15].sol[16][4]  := 0 ;

trtm_main_table[15].sol[17][1]  := 19;
trtm_main_table[15].sol[17][2]  := 35;
trtm_main_table[15].sol[17][3]  := 39;
trtm_main_table[15].sol[17][4]  := 0 ;

trtm_main_table[15].sol[18][1]  := 2 ;
trtm_main_table[15].sol[18][2]  := 19;
trtm_main_table[15].sol[18][3]  := 4 ;
trtm_main_table[15].sol[18][4]  := 35;

trtm_main_table[15].sol[19][1]  := 28;
trtm_main_table[15].sol[19][2]  := 6 ;
trtm_main_table[15].sol[19][3]  := 35;
trtm_main_table[15].sol[19][4]  := 18;

trtm_main_table[15].sol[20][1]  := 0 ;
trtm_main_table[15].sol[20][2]  := 0 ;
trtm_main_table[15].sol[20][3]  := 0 ;
trtm_main_table[15].sol[20][4]  := 0 ;

trtm_main_table[15].sol[21][1]  := 19;
trtm_main_table[15].sol[21][2]  := 10;
trtm_main_table[15].sol[21][3]  := 35;
trtm_main_table[15].sol[21][4]  := 38;

trtm_main_table[15].sol[22][1]  := 0 ;
trtm_main_table[15].sol[22][2]  := 0 ;
trtm_main_table[15].sol[22][3]  := 0 ;
trtm_main_table[15].sol[22][4]  := 0 ;

trtm_main_table[15].sol[23][1]  := 28;
trtm_main_table[15].sol[23][2]  := 27;
trtm_main_table[15].sol[23][3]  := 3 ;
trtm_main_table[15].sol[23][4]  := 18;

trtm_main_table[15].sol[24][1]  := 10;
trtm_main_table[15].sol[24][2]  := 0 ;
trtm_main_table[15].sol[24][3]  := 0 ;
trtm_main_table[15].sol[24][4]  := 0 ;

trtm_main_table[15].sol[25][1]  := 20;
trtm_main_table[15].sol[25][2]  := 10;
trtm_main_table[15].sol[25][3]  := 28;
trtm_main_table[15].sol[25][4]  := 18;

trtm_main_table[15].sol[26][1]  := 3 ;
trtm_main_table[15].sol[26][2]  := 35;
trtm_main_table[15].sol[26][3]  := 10;
trtm_main_table[15].sol[26][4]  := 40;

trtm_main_table[15].sol[27][1]  := 11;
trtm_main_table[15].sol[27][2]  := 2 ;
trtm_main_table[15].sol[27][3]  := 13;
trtm_main_table[15].sol[27][4]  := 0 ;

trtm_main_table[15].sol[28][1]  := 3 ;
trtm_main_table[15].sol[28][2]  := 0 ;
trtm_main_table[15].sol[28][3]  := 0 ;
trtm_main_table[15].sol[28][4]  := 0 ;

trtm_main_table[15].sol[29][1]  := 3 ;
trtm_main_table[15].sol[29][2]  := 27;
trtm_main_table[15].sol[29][3]  := 16;
trtm_main_table[15].sol[29][4]  := 40;

trtm_main_table[15].sol[30][1]  := 22;
trtm_main_table[15].sol[30][2]  := 15;
trtm_main_table[15].sol[30][3]  := 33;
trtm_main_table[15].sol[30][4]  := 28;

trtm_main_table[15].sol[31][1]  := 21;
trtm_main_table[15].sol[31][2]  := 39;
trtm_main_table[15].sol[31][3]  := 16;
trtm_main_table[15].sol[31][4]  := 22;

trtm_main_table[15].sol[32][1]  := 27;
trtm_main_table[15].sol[32][2]  := 1 ;
trtm_main_table[15].sol[32][3]  := 4 ;
trtm_main_table[15].sol[32][4]  := 0 ;

trtm_main_table[15].sol[33][1]  := 12;
trtm_main_table[15].sol[33][2]  := 27;
trtm_main_table[15].sol[33][3]  := 0 ;
trtm_main_table[15].sol[33][4]  := 0 ;

trtm_main_table[15].sol[34][1]  := 29;
trtm_main_table[15].sol[34][2]  := 10;
trtm_main_table[15].sol[34][3]  := 27;
trtm_main_table[15].sol[34][4]  := 0 ;

trtm_main_table[15].sol[35][1]  := 1 ;
trtm_main_table[15].sol[35][2]  := 35;
trtm_main_table[15].sol[35][3]  := 13;
trtm_main_table[15].sol[35][4]  := 0 ;

trtm_main_table[15].sol[36][1]  := 10;
trtm_main_table[15].sol[36][2]  := 4 ;
trtm_main_table[15].sol[36][3]  := 29;
trtm_main_table[15].sol[36][4]  := 15;

trtm_main_table[15].sol[37][1]  := 19;
trtm_main_table[15].sol[37][2]  := 29;
trtm_main_table[15].sol[37][3]  := 39;
trtm_main_table[15].sol[37][4]  := 35;

trtm_main_table[15].sol[38][1]  := 6 ;
trtm_main_table[15].sol[38][2]  := 10;
trtm_main_table[15].sol[38][3]  := 0 ;
trtm_main_table[15].sol[38][4]  := 0 ;

trtm_main_table[15].sol[39][1]  := 35;
trtm_main_table[15].sol[39][2]  := 17;
trtm_main_table[15].sol[39][3]  := 14;
trtm_main_table[15].sol[39][4]  := 19;

trtm_main_table[16].id         := 16;
trtm_main_table[16].desc       := 'Время действия неподвижного объекта';


trtm_main_table[16].sol[1][1]  := 0 ;
trtm_main_table[16].sol[1][2]  := 0 ;
trtm_main_table[16].sol[1][3]  := 0 ;
trtm_main_table[16].sol[1][4]  := 0 ;

trtm_main_table[16].sol[2][1]  := 6 ;
trtm_main_table[16].sol[2][2]  := 27;
trtm_main_table[16].sol[2][3]  := 19;
trtm_main_table[16].sol[2][4]  := 16;

trtm_main_table[16].sol[3][1]  := 0 ;
trtm_main_table[16].sol[3][2]  := 0 ;
trtm_main_table[16].sol[3][3]  := 0 ;
trtm_main_table[16].sol[3][4]  := 0 ;

trtm_main_table[16].sol[4][1]  := 1 ;
trtm_main_table[16].sol[4][2]  := 40;
trtm_main_table[16].sol[4][3]  := 35;
trtm_main_table[16].sol[4][4]  := 0 ;

trtm_main_table[16].sol[5][1]  := 0 ;
trtm_main_table[16].sol[5][2]  := 0 ;
trtm_main_table[16].sol[5][3]  := 0 ;
trtm_main_table[16].sol[5][4]  := 0 ;

trtm_main_table[16].sol[6][1]  := 0 ;
trtm_main_table[16].sol[6][2]  := 0 ;
trtm_main_table[16].sol[6][3]  := 0 ;
trtm_main_table[16].sol[6][4]  := 0 ;

trtm_main_table[16].sol[7][1]  := 0 ;
trtm_main_table[16].sol[7][2]  := 0 ;
trtm_main_table[16].sol[7][3]  := 0 ;
trtm_main_table[16].sol[7][4]  := 0 ;

trtm_main_table[16].sol[8][1]  := 35;
trtm_main_table[16].sol[8][2]  := 34;
trtm_main_table[16].sol[8][3]  := 38;
trtm_main_table[16].sol[8][4]  := 0 ;

trtm_main_table[16].sol[9][1]  := 0 ;
trtm_main_table[16].sol[9][2]  := 0 ;
trtm_main_table[16].sol[9][3]  := 0 ;
trtm_main_table[16].sol[9][4]  := 0 ;

trtm_main_table[16].sol[10][1]  := 0 ;
trtm_main_table[16].sol[10][2]  := 0 ;
trtm_main_table[16].sol[10][3]  := 0 ;
trtm_main_table[16].sol[10][4]  := 0 ;

trtm_main_table[16].sol[11][1]  := 0 ;
trtm_main_table[16].sol[11][2]  := 0 ;
trtm_main_table[16].sol[11][3]  := 0 ;
trtm_main_table[16].sol[11][4]  := 0 ;

trtm_main_table[16].sol[12][1]  := 0 ;
trtm_main_table[16].sol[12][2]  := 0 ;
trtm_main_table[16].sol[12][3]  := 0 ;
trtm_main_table[16].sol[12][4]  := 0 ;

trtm_main_table[16].sol[13][1]  := 39;
trtm_main_table[16].sol[13][2]  := 3 ;
trtm_main_table[16].sol[13][3]  := 35;
trtm_main_table[16].sol[13][4]  := 23;

trtm_main_table[16].sol[14][1]  := 0 ;
trtm_main_table[16].sol[14][2]  := 0 ;
trtm_main_table[16].sol[14][3]  := 0 ;
trtm_main_table[16].sol[14][4]  := 0 ;

trtm_main_table[16].sol[15][1]  := 0 ;
trtm_main_table[16].sol[15][2]  := 0 ;
trtm_main_table[16].sol[15][3]  := 0 ;
trtm_main_table[16].sol[15][4]  := 0 ;

trtm_main_table[16].sol[16][1]  := 0 ;
trtm_main_table[16].sol[16][2]  := 0 ;
trtm_main_table[16].sol[16][3]  := 0 ;
trtm_main_table[16].sol[16][4]  := 0 ;

trtm_main_table[16].sol[17][1]  := 19;
trtm_main_table[16].sol[17][2]  := 18;
trtm_main_table[16].sol[17][3]  := 36;
trtm_main_table[16].sol[17][4]  := 40;

trtm_main_table[16].sol[18][1]  := 0 ;
trtm_main_table[16].sol[18][2]  := 0 ;
trtm_main_table[16].sol[18][3]  := 0 ;
trtm_main_table[16].sol[18][4]  := 0 ;

trtm_main_table[16].sol[19][1]  := 0 ;
trtm_main_table[16].sol[19][2]  := 0 ;
trtm_main_table[16].sol[19][3]  := 0 ;
trtm_main_table[16].sol[19][4]  := 0 ;

trtm_main_table[16].sol[20][1]  := 0 ;
trtm_main_table[16].sol[20][2]  := 0 ;
trtm_main_table[16].sol[20][3]  := 0 ;
trtm_main_table[16].sol[20][4]  := 0 ;

trtm_main_table[16].sol[21][1]  := 16;
trtm_main_table[16].sol[21][2]  := 0 ;
trtm_main_table[16].sol[21][3]  := 0 ;
trtm_main_table[16].sol[21][4]  := 0 ;

trtm_main_table[16].sol[22][1]  := 0 ;
trtm_main_table[16].sol[22][2]  := 0 ;
trtm_main_table[16].sol[22][3]  := 0 ;
trtm_main_table[16].sol[22][4]  := 0 ;

trtm_main_table[16].sol[23][1]  := 27;
trtm_main_table[16].sol[23][2]  := 16;
trtm_main_table[16].sol[23][3]  := 18;
trtm_main_table[16].sol[23][4]  := 38;

trtm_main_table[16].sol[24][1]  := 10;
trtm_main_table[16].sol[24][2]  := 0 ;
trtm_main_table[16].sol[24][3]  := 0 ;
trtm_main_table[16].sol[24][4]  := 0 ;

trtm_main_table[16].sol[25][1]  := 28;
trtm_main_table[16].sol[25][2]  := 20;
trtm_main_table[16].sol[25][3]  := 10;
trtm_main_table[16].sol[25][4]  := 16;

trtm_main_table[16].sol[26][1]  := 3 ;
trtm_main_table[16].sol[26][2]  := 35;
trtm_main_table[16].sol[26][3]  := 31;
trtm_main_table[16].sol[26][4]  := 0 ;

trtm_main_table[16].sol[27][1]  := 34;
trtm_main_table[16].sol[27][2]  := 27;
trtm_main_table[16].sol[27][3]  := 6 ;
trtm_main_table[16].sol[27][4]  := 40;

trtm_main_table[16].sol[28][1]  := 10;
trtm_main_table[16].sol[28][2]  := 26;
trtm_main_table[16].sol[28][3]  := 24;
trtm_main_table[16].sol[28][4]  := 0 ;

trtm_main_table[16].sol[29][1]  := 0 ;
trtm_main_table[16].sol[29][2]  := 0 ;
trtm_main_table[16].sol[29][3]  := 0 ;
trtm_main_table[16].sol[29][4]  := 0 ;

trtm_main_table[16].sol[30][1]  := 17;
trtm_main_table[16].sol[30][2]  := 1 ;
trtm_main_table[16].sol[30][3]  := 40;
trtm_main_table[16].sol[30][4]  := 33;

trtm_main_table[16].sol[31][1]  := 22;
trtm_main_table[16].sol[31][2]  := 0 ;
trtm_main_table[16].sol[31][3]  := 0 ;
trtm_main_table[16].sol[31][4]  := 0 ;

trtm_main_table[16].sol[32][1]  := 35;
trtm_main_table[16].sol[32][2]  := 10;
trtm_main_table[16].sol[32][3]  := 0 ;
trtm_main_table[16].sol[32][4]  := 0 ;

trtm_main_table[16].sol[33][1]  := 1 ;
trtm_main_table[16].sol[33][2]  := 0 ;
trtm_main_table[16].sol[33][3]  := 0 ;
trtm_main_table[16].sol[33][4]  := 0 ;

trtm_main_table[16].sol[34][1]  := 1 ;
trtm_main_table[16].sol[34][2]  := 0 ;
trtm_main_table[16].sol[34][3]  := 0 ;
trtm_main_table[16].sol[34][4]  := 0 ;

trtm_main_table[16].sol[35][1]  := 2 ;
trtm_main_table[16].sol[35][2]  := 0 ;
trtm_main_table[16].sol[35][3]  := 0 ;
trtm_main_table[16].sol[35][4]  := 0 ;

trtm_main_table[16].sol[36][1]  := 0 ;
trtm_main_table[16].sol[36][2]  := 0 ;
trtm_main_table[16].sol[36][3]  := 0 ;
trtm_main_table[16].sol[36][4]  := 0 ;

trtm_main_table[16].sol[37][1]  := 25;
trtm_main_table[16].sol[37][2]  := 34;
trtm_main_table[16].sol[37][3]  := 6 ;
trtm_main_table[16].sol[37][4]  := 35;

trtm_main_table[16].sol[38][1]  := 1 ;
trtm_main_table[16].sol[38][2]  := 0 ;
trtm_main_table[16].sol[38][3]  := 0 ;
trtm_main_table[16].sol[38][4]  := 0 ;

trtm_main_table[16].sol[39][1]  := 20;
trtm_main_table[16].sol[39][2]  := 10;
trtm_main_table[16].sol[39][3]  := 16;
trtm_main_table[16].sol[39][4]  := 38;

trtm_main_table[17].id         := 17;
trtm_main_table[17].desc       := 'Температура';


trtm_main_table[17].sol[1][1]  := 36;
trtm_main_table[17].sol[1][2]  := 22;
trtm_main_table[17].sol[1][3]  := 6 ;
trtm_main_table[17].sol[1][4]  := 38;

trtm_main_table[17].sol[2][1]  := 22;
trtm_main_table[17].sol[2][2]  := 35;
trtm_main_table[17].sol[2][3]  := 32;
trtm_main_table[17].sol[2][4]  := 0 ;

trtm_main_table[17].sol[3][1]  := 15;
trtm_main_table[17].sol[3][2]  := 19;
trtm_main_table[17].sol[3][3]  := 9 ;
trtm_main_table[17].sol[3][4]  := 0 ;

trtm_main_table[17].sol[4][1]  := 15;
trtm_main_table[17].sol[4][2]  := 19;
trtm_main_table[17].sol[4][3]  := 9 ;
trtm_main_table[17].sol[4][4]  := 0 ;

trtm_main_table[17].sol[5][1]  := 3 ;
trtm_main_table[17].sol[5][2]  := 35;
trtm_main_table[17].sol[5][3]  := 39;
trtm_main_table[17].sol[5][4]  := 18;

trtm_main_table[17].sol[6][1]  := 35;
trtm_main_table[17].sol[6][2]  := 38;
trtm_main_table[17].sol[6][3]  := 0 ;
trtm_main_table[17].sol[6][4]  := 0 ;

trtm_main_table[17].sol[7][1]  := 34;
trtm_main_table[17].sol[7][2]  := 39;
trtm_main_table[17].sol[7][3]  := 40;
trtm_main_table[17].sol[7][4]  := 18;

trtm_main_table[17].sol[8][1]  := 35;
trtm_main_table[17].sol[8][2]  := 6 ;
trtm_main_table[17].sol[8][3]  := 4 ;
trtm_main_table[17].sol[8][4]  := 0 ;

trtm_main_table[17].sol[9][1]  := 2 ;
trtm_main_table[17].sol[9][2]  := 28;
trtm_main_table[17].sol[9][3]  := 36;
trtm_main_table[17].sol[9][4]  := 30;

trtm_main_table[17].sol[10][1]  := 35;
trtm_main_table[17].sol[10][2]  := 10;
trtm_main_table[17].sol[10][3]  := 3 ;
trtm_main_table[17].sol[10][4]  := 21;

trtm_main_table[17].sol[11][1]  := 35;
trtm_main_table[17].sol[11][2]  := 39;
trtm_main_table[17].sol[11][3]  := 19;
trtm_main_table[17].sol[11][4]  := 2 ;

trtm_main_table[17].sol[12][1]  := 14;
trtm_main_table[17].sol[12][2]  := 22;
trtm_main_table[17].sol[12][3]  := 19;
trtm_main_table[17].sol[12][4]  := 32;

trtm_main_table[17].sol[13][1]  := 1 ;
trtm_main_table[17].sol[13][2]  := 35;
trtm_main_table[17].sol[13][3]  := 32;
trtm_main_table[17].sol[13][4]  := 0 ;

trtm_main_table[17].sol[14][1]  := 10;
trtm_main_table[17].sol[14][2]  := 30;
trtm_main_table[17].sol[14][3]  := 22;
trtm_main_table[17].sol[14][4]  := 40;

trtm_main_table[17].sol[15][1]  := 19;
trtm_main_table[17].sol[15][2]  := 13;
trtm_main_table[17].sol[15][3]  := 39;
trtm_main_table[17].sol[15][4]  := 0 ;

trtm_main_table[17].sol[16][1]  := 19;
trtm_main_table[17].sol[16][2]  := 18;
trtm_main_table[17].sol[16][3]  := 36;
trtm_main_table[17].sol[16][4]  := 40;

trtm_main_table[17].sol[17][1]  := 0 ;
trtm_main_table[17].sol[17][2]  := 0 ;
trtm_main_table[17].sol[17][3]  := 0 ;
trtm_main_table[17].sol[17][4]  := 0 ;

trtm_main_table[17].sol[18][1]  := 32;
trtm_main_table[17].sol[18][2]  := 30;
trtm_main_table[17].sol[18][3]  := 21;
trtm_main_table[17].sol[18][4]  := 16;

trtm_main_table[17].sol[19][1]  := 19;
trtm_main_table[17].sol[19][2]  := 15;
trtm_main_table[17].sol[19][3]  := 3 ;
trtm_main_table[17].sol[19][4]  := 17;

trtm_main_table[17].sol[20][1]  := 0 ;
trtm_main_table[17].sol[20][2]  := 0 ;
trtm_main_table[17].sol[20][3]  := 0 ;
trtm_main_table[17].sol[20][4]  := 0 ;

trtm_main_table[17].sol[21][1]  := 2 ;
trtm_main_table[17].sol[21][2]  := 14;
trtm_main_table[17].sol[21][3]  := 17;
trtm_main_table[17].sol[21][4]  := 25;

trtm_main_table[17].sol[22][1]  := 21;
trtm_main_table[17].sol[22][2]  := 17;
trtm_main_table[17].sol[22][3]  := 35;
trtm_main_table[17].sol[22][4]  := 38;

trtm_main_table[17].sol[23][1]  := 21;
trtm_main_table[17].sol[23][2]  := 36;
trtm_main_table[17].sol[23][3]  := 29;
trtm_main_table[17].sol[23][4]  := 31;

trtm_main_table[17].sol[24][1]  := 0 ;
trtm_main_table[17].sol[24][2]  := 0 ;
trtm_main_table[17].sol[24][3]  := 0 ;
trtm_main_table[17].sol[24][4]  := 0 ;

trtm_main_table[17].sol[25][1]  := 35;
trtm_main_table[17].sol[25][2]  := 28;
trtm_main_table[17].sol[25][3]  := 21;
trtm_main_table[17].sol[25][4]  := 18;

trtm_main_table[17].sol[26][1]  := 3 ;
trtm_main_table[17].sol[26][2]  := 17;
trtm_main_table[17].sol[26][3]  := 30;
trtm_main_table[17].sol[26][4]  := 39;

trtm_main_table[17].sol[27][1]  := 19;
trtm_main_table[17].sol[27][2]  := 35;
trtm_main_table[17].sol[27][3]  := 3 ;
trtm_main_table[17].sol[27][4]  := 10;

trtm_main_table[17].sol[28][1]  := 32;
trtm_main_table[17].sol[28][2]  := 19;
trtm_main_table[17].sol[28][3]  := 24;
trtm_main_table[17].sol[28][4]  := 0 ;

trtm_main_table[17].sol[29][1]  := 24;
trtm_main_table[17].sol[29][2]  := 0 ;
trtm_main_table[17].sol[29][3]  := 0 ;
trtm_main_table[17].sol[29][4]  := 0 ;

trtm_main_table[17].sol[30][1]  := 22;
trtm_main_table[17].sol[30][2]  := 33;
trtm_main_table[17].sol[30][3]  := 35;
trtm_main_table[17].sol[30][4]  := 2 ;

trtm_main_table[17].sol[31][1]  := 22;
trtm_main_table[17].sol[31][2]  := 35;
trtm_main_table[17].sol[31][3]  := 2 ;
trtm_main_table[17].sol[31][4]  := 24;

trtm_main_table[17].sol[32][1]  := 26;
trtm_main_table[17].sol[32][2]  := 27;
trtm_main_table[17].sol[32][3]  := 0 ;
trtm_main_table[17].sol[32][4]  := 0 ;

trtm_main_table[17].sol[33][1]  := 26;
trtm_main_table[17].sol[33][2]  := 27;
trtm_main_table[17].sol[33][3]  := 0 ;
trtm_main_table[17].sol[33][4]  := 0 ;

trtm_main_table[17].sol[34][1]  := 4 ;
trtm_main_table[17].sol[34][2]  := 10;
trtm_main_table[17].sol[34][3]  := 16;
trtm_main_table[17].sol[34][4]  := 0 ;

trtm_main_table[17].sol[35][1]  := 2 ;
trtm_main_table[17].sol[35][2]  := 18;
trtm_main_table[17].sol[35][3]  := 27;
trtm_main_table[17].sol[35][4]  := 0 ;

trtm_main_table[17].sol[36][1]  := 2 ;
trtm_main_table[17].sol[36][2]  := 17;
trtm_main_table[17].sol[36][3]  := 16;
trtm_main_table[17].sol[36][4]  := 0 ;

trtm_main_table[17].sol[37][1]  := 3 ;
trtm_main_table[17].sol[37][2]  := 27;
trtm_main_table[17].sol[37][3]  := 35;
trtm_main_table[17].sol[37][4]  := 31;

trtm_main_table[17].sol[38][1]  := 26;
trtm_main_table[17].sol[38][2]  := 2 ;
trtm_main_table[17].sol[38][3]  := 19;
trtm_main_table[17].sol[38][4]  := 16;

trtm_main_table[17].sol[39][1]  := 15;
trtm_main_table[17].sol[39][2]  := 28;
trtm_main_table[17].sol[39][3]  := 35;
trtm_main_table[17].sol[39][4]  := 0 ;

trtm_main_table[18].id         := 18;
trtm_main_table[18].desc       := 'Освещенность';


trtm_main_table[18].sol[1][1]  := 19;
trtm_main_table[18].sol[1][2]  := 1 ;
trtm_main_table[18].sol[1][3]  := 32;
trtm_main_table[18].sol[1][4]  := 0 ;

trtm_main_table[18].sol[2][1]  := 2 ;
trtm_main_table[18].sol[2][2]  := 35;
trtm_main_table[18].sol[2][3]  := 32;
trtm_main_table[18].sol[2][4]  := 0 ;

trtm_main_table[18].sol[3][1]  := 19;
trtm_main_table[18].sol[3][2]  := 32;
trtm_main_table[18].sol[3][3]  := 16;
trtm_main_table[18].sol[3][4]  := 0 ;

trtm_main_table[18].sol[4][1]  := 0 ;
trtm_main_table[18].sol[4][2]  := 0 ;
trtm_main_table[18].sol[4][3]  := 0 ;
trtm_main_table[18].sol[4][4]  := 0 ;

trtm_main_table[18].sol[5][1]  := 19;
trtm_main_table[18].sol[5][2]  := 32;
trtm_main_table[18].sol[5][3]  := 26;
trtm_main_table[18].sol[5][4]  := 0 ;

trtm_main_table[18].sol[6][1]  := 0 ;
trtm_main_table[18].sol[6][2]  := 0 ;
trtm_main_table[18].sol[6][3]  := 0 ;
trtm_main_table[18].sol[6][4]  := 0 ;

trtm_main_table[18].sol[7][1]  := 2 ;
trtm_main_table[18].sol[7][2]  := 13;
trtm_main_table[18].sol[7][3]  := 10;
trtm_main_table[18].sol[7][4]  := 0 ;

trtm_main_table[18].sol[8][1]  := 10;
trtm_main_table[18].sol[8][2]  := 13;
trtm_main_table[18].sol[8][3]  := 19;
trtm_main_table[18].sol[8][4]  := 0 ;

trtm_main_table[18].sol[9][1]  := 26;
trtm_main_table[18].sol[9][2]  := 19;
trtm_main_table[18].sol[9][3]  := 6 ;
trtm_main_table[18].sol[9][4]  := 0 ;

trtm_main_table[18].sol[10][1]  := 0 ;
trtm_main_table[18].sol[10][2]  := 0 ;
trtm_main_table[18].sol[10][3]  := 0 ;
trtm_main_table[18].sol[10][4]  := 0 ;

trtm_main_table[18].sol[11][1]  := 32;
trtm_main_table[18].sol[11][2]  := 30;
trtm_main_table[18].sol[11][3]  := 0 ;
trtm_main_table[18].sol[11][4]  := 0 ;

trtm_main_table[18].sol[12][1]  := 32;
trtm_main_table[18].sol[12][2]  := 30;
trtm_main_table[18].sol[12][3]  := 0 ;
trtm_main_table[18].sol[12][4]  := 0 ;

trtm_main_table[18].sol[13][1]  := 32;
trtm_main_table[18].sol[13][2]  := 3 ;
trtm_main_table[18].sol[13][3]  := 27;
trtm_main_table[18].sol[13][4]  := 0 ;

trtm_main_table[18].sol[14][1]  := 35;
trtm_main_table[18].sol[14][2]  := 19;
trtm_main_table[18].sol[14][3]  := 0 ;
trtm_main_table[18].sol[14][4]  := 0 ;

trtm_main_table[18].sol[15][1]  := 2 ;
trtm_main_table[18].sol[15][2]  := 19;
trtm_main_table[18].sol[15][3]  := 6 ;
trtm_main_table[18].sol[15][4]  := 0 ;

trtm_main_table[18].sol[16][1]  := 0 ;
trtm_main_table[18].sol[16][2]  := 0 ;
trtm_main_table[18].sol[16][3]  := 0 ;
trtm_main_table[18].sol[16][4]  := 0 ;

trtm_main_table[18].sol[17][1]  := 32;
trtm_main_table[18].sol[17][2]  := 35;
trtm_main_table[18].sol[17][3]  := 19;
trtm_main_table[18].sol[17][4]  := 0 ;

trtm_main_table[18].sol[18][1]  := 0 ;
trtm_main_table[18].sol[18][2]  := 0 ;
trtm_main_table[18].sol[18][3]  := 0 ;
trtm_main_table[18].sol[18][4]  := 0 ;

trtm_main_table[18].sol[19][1]  := 32;
trtm_main_table[18].sol[19][2]  := 1 ;
trtm_main_table[18].sol[19][3]  := 19;
trtm_main_table[18].sol[19][4]  := 0 ;

trtm_main_table[18].sol[20][1]  := 32;
trtm_main_table[18].sol[20][2]  := 35;
trtm_main_table[18].sol[20][3]  := 1 ;
trtm_main_table[18].sol[20][4]  := 15;

trtm_main_table[18].sol[21][1]  := 32;
trtm_main_table[18].sol[21][2]  := 0 ;
trtm_main_table[18].sol[21][3]  := 0 ;
trtm_main_table[18].sol[21][4]  := 0 ;

trtm_main_table[18].sol[22][1]  := 19;
trtm_main_table[18].sol[22][2]  := 16;
trtm_main_table[18].sol[22][3]  := 1 ;
trtm_main_table[18].sol[22][4]  := 6 ;

trtm_main_table[18].sol[23][1]  := 13;
trtm_main_table[18].sol[23][2]  := 1 ;
trtm_main_table[18].sol[23][3]  := 0 ;
trtm_main_table[18].sol[23][4]  := 0 ;

trtm_main_table[18].sol[24][1]  := 1 ;
trtm_main_table[18].sol[24][2]  := 6 ;
trtm_main_table[18].sol[24][3]  := 0 ;
trtm_main_table[18].sol[24][4]  := 0 ;

trtm_main_table[18].sol[25][1]  := 19;
trtm_main_table[18].sol[25][2]  := 1 ;
trtm_main_table[18].sol[25][3]  := 26;
trtm_main_table[18].sol[25][4]  := 17;

trtm_main_table[18].sol[26][1]  := 1 ;
trtm_main_table[18].sol[26][2]  := 19;
trtm_main_table[18].sol[26][3]  := 0 ;
trtm_main_table[18].sol[26][4]  := 0 ;

trtm_main_table[18].sol[27][1]  := 0 ;
trtm_main_table[18].sol[27][2]  := 0 ;
trtm_main_table[18].sol[27][3]  := 0 ;
trtm_main_table[18].sol[27][4]  := 0 ;

trtm_main_table[18].sol[28][1]  := 11;
trtm_main_table[18].sol[28][2]  := 15;
trtm_main_table[18].sol[28][3]  := 32;
trtm_main_table[18].sol[28][4]  := 0 ;

trtm_main_table[18].sol[29][1]  := 3 ;
trtm_main_table[18].sol[29][2]  := 32;
trtm_main_table[18].sol[29][3]  := 0 ;
trtm_main_table[18].sol[29][4]  := 0 ;

trtm_main_table[18].sol[30][1]  := 15;
trtm_main_table[18].sol[30][2]  := 19;
trtm_main_table[18].sol[30][3]  := 0 ;
trtm_main_table[18].sol[30][4]  := 0 ;

trtm_main_table[18].sol[31][1]  := 35;
trtm_main_table[18].sol[31][2]  := 19;
trtm_main_table[18].sol[31][3]  := 32;
trtm_main_table[18].sol[31][4]  := 39;

trtm_main_table[18].sol[32][1]  := 19;
trtm_main_table[18].sol[32][2]  := 35;
trtm_main_table[18].sol[32][3]  := 28;
trtm_main_table[18].sol[32][4]  := 26;

trtm_main_table[18].sol[33][1]  := 28;
trtm_main_table[18].sol[33][2]  := 26;
trtm_main_table[18].sol[33][3]  := 19;
trtm_main_table[18].sol[33][4]  := 0 ;

trtm_main_table[18].sol[34][1]  := 15;
trtm_main_table[18].sol[34][2]  := 17;
trtm_main_table[18].sol[34][3]  := 13;
trtm_main_table[18].sol[34][4]  := 16;

trtm_main_table[18].sol[35][1]  := 15;
trtm_main_table[18].sol[35][2]  := 1 ;
trtm_main_table[18].sol[35][3]  := 19;  // ???
trtm_main_table[18].sol[35][4]  := 0 ;  // ???

trtm_main_table[18].sol[36][1]  := 6 ;
trtm_main_table[18].sol[36][2]  := 32;
trtm_main_table[18].sol[36][3]  := 13;
trtm_main_table[18].sol[36][4]  := 0 ;

trtm_main_table[18].sol[37][1]  := 32;
trtm_main_table[18].sol[37][2]  := 15;
trtm_main_table[18].sol[37][3]  := 0 ;
trtm_main_table[18].sol[37][4]  := 0 ;

trtm_main_table[18].sol[38][1]  := 2 ;
trtm_main_table[18].sol[38][2]  := 26;
trtm_main_table[18].sol[38][3]  := 10;
trtm_main_table[18].sol[38][4]  := 0 ;

trtm_main_table[18].sol[39][1]  := 2 ;
trtm_main_table[18].sol[39][2]  := 25;
trtm_main_table[18].sol[39][3]  := 16;
trtm_main_table[18].sol[39][4]  := 0 ;

trtm_main_table[19].id         := 19;
trtm_main_table[19].desc       := 'Затраты энергии подвижным объектом';


trtm_main_table[19].sol[1][1]  := 12;
trtm_main_table[19].sol[1][2]  := 18;
trtm_main_table[19].sol[1][3]  := 28;
trtm_main_table[19].sol[1][4]  := 31;

trtm_main_table[19].sol[2][1]  := 0 ;
trtm_main_table[19].sol[2][2]  := 0 ;
trtm_main_table[19].sol[2][3]  := 0 ;
trtm_main_table[19].sol[2][4]  := 0 ;

trtm_main_table[19].sol[3][1]  := 12;
trtm_main_table[19].sol[3][2]  := 28;
trtm_main_table[19].sol[3][3]  := 0 ;
trtm_main_table[19].sol[3][4]  := 0 ;

trtm_main_table[19].sol[4][1]  := 0 ;
trtm_main_table[19].sol[4][2]  := 0 ;
trtm_main_table[19].sol[4][3]  := 0 ;
trtm_main_table[19].sol[4][4]  := 0 ;

trtm_main_table[19].sol[5][1]  := 15;
trtm_main_table[19].sol[5][2]  := 19;
trtm_main_table[19].sol[5][3]  := 25;
trtm_main_table[19].sol[5][4]  := 0 ;

trtm_main_table[19].sol[6][1]  := 0 ;
trtm_main_table[19].sol[6][2]  := 0 ;
trtm_main_table[19].sol[6][3]  := 0 ;
trtm_main_table[19].sol[6][4]  := 0 ;

trtm_main_table[19].sol[7][1]  := 35;
trtm_main_table[19].sol[7][2]  := 13;
trtm_main_table[19].sol[7][3]  := 18;
trtm_main_table[19].sol[7][4]  := 0 ;

trtm_main_table[19].sol[8][1]  := 0 ;
trtm_main_table[19].sol[8][2]  := 0 ;
trtm_main_table[19].sol[8][3]  := 0 ;
trtm_main_table[19].sol[8][4]  := 0 ;

trtm_main_table[19].sol[9][1]  := 8 ;
trtm_main_table[19].sol[9][2]  := 15;
trtm_main_table[19].sol[9][3]  := 35;
trtm_main_table[19].sol[9][4]  := 0 ;

trtm_main_table[19].sol[10][1]  := 16;
trtm_main_table[19].sol[10][2]  := 26;
trtm_main_table[19].sol[10][3]  := 21;
trtm_main_table[19].sol[10][4]  := 2 ;

trtm_main_table[19].sol[11][1]  := 23;
trtm_main_table[19].sol[11][2]  := 14;
trtm_main_table[19].sol[11][3]  := 25;
trtm_main_table[19].sol[11][4]  := 0 ;

trtm_main_table[19].sol[12][1]  := 12;
trtm_main_table[19].sol[12][2]  := 2 ;
trtm_main_table[19].sol[12][3]  := 29;
trtm_main_table[19].sol[12][4]  := 0 ;

trtm_main_table[19].sol[13][1]  := 19;
trtm_main_table[19].sol[13][2]  := 13;
trtm_main_table[19].sol[13][3]  := 17;
trtm_main_table[19].sol[13][4]  := 24;

trtm_main_table[19].sol[14][1]  := 5 ;
trtm_main_table[19].sol[14][2]  := 19;
trtm_main_table[19].sol[14][3]  := 9 ;
trtm_main_table[19].sol[14][4]  := 35;

trtm_main_table[19].sol[15][1]  := 28;
trtm_main_table[19].sol[15][2]  := 35;
trtm_main_table[19].sol[15][3]  := 6 ;
trtm_main_table[19].sol[15][4]  := 18;

trtm_main_table[19].sol[16][1]  := 0 ;
trtm_main_table[19].sol[16][2]  := 0 ;
trtm_main_table[19].sol[16][3]  := 0 ;
trtm_main_table[19].sol[16][4]  := 0 ;

trtm_main_table[19].sol[17][1]  := 19;
trtm_main_table[19].sol[17][2]  := 24;
trtm_main_table[19].sol[17][3]  := 3 ;
trtm_main_table[19].sol[17][4]  := 14;

trtm_main_table[19].sol[18][1]  := 2 ;
trtm_main_table[19].sol[18][2]  := 15;
trtm_main_table[19].sol[18][3]  := 19;
trtm_main_table[19].sol[18][4]  := 0 ;

trtm_main_table[19].sol[19][1]  := 0 ;
trtm_main_table[19].sol[19][2]  := 0 ;
trtm_main_table[19].sol[19][3]  := 0 ;
trtm_main_table[19].sol[19][4]  := 0 ;

trtm_main_table[19].sol[20][1]  := 0 ;
trtm_main_table[19].sol[20][2]  := 0 ;
trtm_main_table[19].sol[20][3]  := 0 ;
trtm_main_table[19].sol[20][4]  := 0 ;

trtm_main_table[19].sol[21][1]  := 6 ;
trtm_main_table[19].sol[21][2]  := 19;
trtm_main_table[19].sol[21][3]  := 37;
trtm_main_table[19].sol[21][4]  := 18;

trtm_main_table[19].sol[22][1]  := 12;
trtm_main_table[19].sol[22][2]  := 22;
trtm_main_table[19].sol[22][3]  := 15;
trtm_main_table[19].sol[22][4]  := 24;

trtm_main_table[19].sol[23][1]  := 35;
trtm_main_table[19].sol[23][2]  := 24;
trtm_main_table[19].sol[23][3]  := 18;
trtm_main_table[19].sol[23][4]  := 5 ;

trtm_main_table[19].sol[24][1]  := 0 ;
trtm_main_table[19].sol[24][2]  := 0 ;
trtm_main_table[19].sol[24][3]  := 0 ;
trtm_main_table[19].sol[24][4]  := 0 ;

trtm_main_table[19].sol[25][1]  := 35;
trtm_main_table[19].sol[25][2]  := 38;
trtm_main_table[19].sol[25][3]  := 19;
trtm_main_table[19].sol[25][4]  := 18;

trtm_main_table[19].sol[26][1]  := 34;
trtm_main_table[19].sol[26][2]  := 23;
trtm_main_table[19].sol[26][3]  := 16;
trtm_main_table[19].sol[26][4]  := 18;

trtm_main_table[19].sol[27][1]  := 19;
trtm_main_table[19].sol[27][2]  := 21;
trtm_main_table[19].sol[27][3]  := 11;
trtm_main_table[19].sol[27][4]  := 27;

trtm_main_table[19].sol[28][1]  := 3 ;
trtm_main_table[19].sol[28][2]  := 1 ;
trtm_main_table[19].sol[28][3]  := 32;
trtm_main_table[19].sol[28][4]  := 0 ;

trtm_main_table[19].sol[29][1]  := 0 ;
trtm_main_table[19].sol[29][2]  := 0 ;
trtm_main_table[19].sol[29][3]  := 0 ;
trtm_main_table[19].sol[29][4]  := 0 ;

trtm_main_table[19].sol[30][1]  := 1 ;
trtm_main_table[19].sol[30][2]  := 35;
trtm_main_table[19].sol[30][3]  := 6 ;
trtm_main_table[19].sol[30][4]  := 27;

trtm_main_table[19].sol[31][1]  := 2 ;
trtm_main_table[19].sol[31][2]  := 35;
trtm_main_table[19].sol[31][3]  := 6 ;
trtm_main_table[19].sol[31][4]  := 0 ;

trtm_main_table[19].sol[32][1]  := 28;
trtm_main_table[19].sol[32][2]  := 26;
trtm_main_table[19].sol[32][3]  := 30;
trtm_main_table[19].sol[32][4]  := 0 ;

trtm_main_table[19].sol[33][1]  := 19;
trtm_main_table[19].sol[33][2]  := 35;
trtm_main_table[19].sol[33][3]  := 0 ;
trtm_main_table[19].sol[33][4]  := 0 ;

trtm_main_table[19].sol[34][1]  := 1 ;
trtm_main_table[19].sol[34][2]  := 15;
trtm_main_table[19].sol[34][3]  := 17;
trtm_main_table[19].sol[34][4]  := 28;

trtm_main_table[19].sol[35][1]  := 15;
trtm_main_table[19].sol[35][2]  := 17;
trtm_main_table[19].sol[35][3]  := 13;
trtm_main_table[19].sol[35][4]  := 16;

trtm_main_table[19].sol[36][1]  := 2 ;
trtm_main_table[19].sol[36][2]  := 29;
trtm_main_table[19].sol[36][3]  := 27;
trtm_main_table[19].sol[36][4]  := 28;

trtm_main_table[19].sol[37][1]  := 35;
trtm_main_table[19].sol[37][2]  := 38;
trtm_main_table[19].sol[37][3]  := 0 ;
trtm_main_table[19].sol[37][4]  := 0 ;

trtm_main_table[19].sol[38][1]  := 32;
trtm_main_table[19].sol[38][2]  := 2 ;
trtm_main_table[19].sol[38][3]  := 0 ;
trtm_main_table[19].sol[38][4]  := 0 ;

trtm_main_table[19].sol[39][1]  := 12;
trtm_main_table[19].sol[39][2]  := 28;
trtm_main_table[19].sol[39][3]  := 35;
trtm_main_table[19].sol[39][4]  := 0 ;

trtm_main_table[20].id         := 20 ;
trtm_main_table[20].desc       := 'Затраты энергии неподвижным объектом';


trtm_main_table[20].sol[1][1]  := 0 ;
trtm_main_table[20].sol[1][2]  := 0 ;
trtm_main_table[20].sol[1][3]  := 0 ;
trtm_main_table[20].sol[1][4]  := 0 ;

trtm_main_table[20].sol[2][1]  := 19;
trtm_main_table[20].sol[2][2]  := 9 ;
trtm_main_table[20].sol[2][3]  := 6 ;
trtm_main_table[20].sol[2][4]  := 27;

trtm_main_table[20].sol[3][1]  := 0 ;
trtm_main_table[20].sol[3][2]  := 0 ;
trtm_main_table[20].sol[3][3]  := 0 ;
trtm_main_table[20].sol[3][4]  := 0 ;

trtm_main_table[20].sol[4][1]  := 0 ;
trtm_main_table[20].sol[4][2]  := 0 ;
trtm_main_table[20].sol[4][3]  := 0 ;
trtm_main_table[20].sol[4][4]  := 0 ;

trtm_main_table[20].sol[5][1]  := 0 ;
trtm_main_table[20].sol[5][2]  := 0 ;
trtm_main_table[20].sol[5][3]  := 0 ;
trtm_main_table[20].sol[5][4]  := 0 ;

trtm_main_table[20].sol[6][1]  := 0 ;
trtm_main_table[20].sol[6][2]  := 0 ;
trtm_main_table[20].sol[6][3]  := 0 ;
trtm_main_table[20].sol[6][4]  := 0 ;

trtm_main_table[20].sol[7][1]  := 0 ;
trtm_main_table[20].sol[7][2]  := 0 ;
trtm_main_table[20].sol[7][3]  := 0 ;
trtm_main_table[20].sol[7][4]  := 0 ;

trtm_main_table[20].sol[8][1]  := 0 ;
trtm_main_table[20].sol[8][2]  := 0 ;
trtm_main_table[20].sol[8][3]  := 0 ;
trtm_main_table[20].sol[8][4]  := 0 ;

trtm_main_table[20].sol[9][1]  := 0 ;
trtm_main_table[20].sol[9][2]  := 0 ;
trtm_main_table[20].sol[9][3]  := 0 ;
trtm_main_table[20].sol[9][4]  := 0 ;

trtm_main_table[20].sol[10][1]  := 36;
trtm_main_table[20].sol[10][2]  := 37;
trtm_main_table[20].sol[10][3]  := 0 ;
trtm_main_table[20].sol[10][4]  := 0 ;

trtm_main_table[20].sol[11][1]  := 0 ;
trtm_main_table[20].sol[11][2]  := 0 ;
trtm_main_table[20].sol[11][3]  := 0 ;
trtm_main_table[20].sol[11][4]  := 0 ;

trtm_main_table[20].sol[12][1]  := 0 ;
trtm_main_table[20].sol[12][2]  := 0 ;
trtm_main_table[20].sol[12][3]  := 0 ;
trtm_main_table[20].sol[12][4]  := 0 ;

trtm_main_table[20].sol[13][1]  := 27;
trtm_main_table[20].sol[13][2]  := 4 ;
trtm_main_table[20].sol[13][3]  := 29;
trtm_main_table[20].sol[13][4]  := 18;

trtm_main_table[20].sol[14][1]  := 35;
trtm_main_table[20].sol[14][2]  := 0 ;
trtm_main_table[20].sol[14][3]  := 0 ;
trtm_main_table[20].sol[14][4]  := 0 ;

trtm_main_table[20].sol[15][1]  := 0 ;
trtm_main_table[20].sol[15][2]  := 0 ;
trtm_main_table[20].sol[15][3]  := 0 ;
trtm_main_table[20].sol[15][4]  := 0 ;

trtm_main_table[20].sol[16][1]  := 0 ;
trtm_main_table[20].sol[16][2]  := 0 ;
trtm_main_table[20].sol[16][3]  := 0 ;
trtm_main_table[20].sol[16][4]  := 0 ;

trtm_main_table[20].sol[17][1]  := 0 ;
trtm_main_table[20].sol[17][2]  := 0 ;
trtm_main_table[20].sol[17][3]  := 0 ;
trtm_main_table[20].sol[17][4]  := 0 ;

trtm_main_table[20].sol[18][1]  := 19;
trtm_main_table[20].sol[18][2]  := 2 ;
trtm_main_table[20].sol[18][3]  := 35;
trtm_main_table[20].sol[18][4]  := 32;

trtm_main_table[20].sol[19][1]  := 0 ;
trtm_main_table[20].sol[19][2]  := 0 ;
trtm_main_table[20].sol[19][3]  := 0 ;
trtm_main_table[20].sol[19][4]  := 0 ;

trtm_main_table[20].sol[20][1]  := 0 ;
trtm_main_table[20].sol[20][2]  := 0 ;
trtm_main_table[20].sol[20][3]  := 0 ;
trtm_main_table[20].sol[20][4]  := 0 ;

trtm_main_table[20].sol[21][1]  := 0 ;
trtm_main_table[20].sol[21][2]  := 0 ;
trtm_main_table[20].sol[21][3]  := 0 ;
trtm_main_table[20].sol[21][4]  := 0 ;

trtm_main_table[20].sol[22][1]  := 0 ;
trtm_main_table[20].sol[22][2]  := 0 ;
trtm_main_table[20].sol[22][3]  := 0 ;
trtm_main_table[20].sol[22][4]  := 0 ;

trtm_main_table[20].sol[23][1]  := 28;
trtm_main_table[20].sol[23][2]  := 27;
trtm_main_table[20].sol[23][3]  := 18;
trtm_main_table[20].sol[23][4]  := 31;

trtm_main_table[20].sol[24][1]  := 0 ;
trtm_main_table[20].sol[24][2]  := 0 ;
trtm_main_table[20].sol[24][3]  := 0 ;
trtm_main_table[20].sol[24][4]  := 0 ;

trtm_main_table[20].sol[25][1]  := 0 ;
trtm_main_table[20].sol[25][2]  := 0 ;
trtm_main_table[20].sol[25][3]  := 0 ;
trtm_main_table[20].sol[25][4]  := 0 ;

trtm_main_table[20].sol[26][1]  := 3 ;
trtm_main_table[20].sol[26][2]  := 35;
trtm_main_table[20].sol[26][3]  := 31;
trtm_main_table[20].sol[26][4]  := 0 ;

trtm_main_table[20].sol[27][1]  := 10;
trtm_main_table[20].sol[27][2]  := 36;
trtm_main_table[20].sol[27][3]  := 23;
trtm_main_table[20].sol[27][4]  := 0 ;

trtm_main_table[20].sol[28][1]  := 0 ;
trtm_main_table[20].sol[28][2]  := 0 ;
trtm_main_table[20].sol[28][3]  := 0 ;
trtm_main_table[20].sol[28][4]  := 0 ;

trtm_main_table[20].sol[29][1]  := 0 ;
trtm_main_table[20].sol[29][2]  := 0 ;
trtm_main_table[20].sol[29][3]  := 0 ;
trtm_main_table[20].sol[29][4]  := 0 ;

trtm_main_table[20].sol[30][1]  := 10;
trtm_main_table[20].sol[30][2]  := 2 ;
trtm_main_table[20].sol[30][3]  := 22;
trtm_main_table[20].sol[30][4]  := 37;

trtm_main_table[20].sol[31][1]  := 19;
trtm_main_table[20].sol[31][2]  := 22;
trtm_main_table[20].sol[31][3]  := 18;
trtm_main_table[20].sol[31][4]  := 0 ;

trtm_main_table[20].sol[32][1]  := 1 ;
trtm_main_table[20].sol[32][2]  := 4 ;
trtm_main_table[20].sol[32][3]  := 0 ;
trtm_main_table[20].sol[32][4]  := 0 ;

trtm_main_table[20].sol[33][1]  := 0 ;
trtm_main_table[20].sol[33][2]  := 0 ;
trtm_main_table[20].sol[33][3]  := 0 ;
trtm_main_table[20].sol[33][4]  := 0 ;

trtm_main_table[20].sol[34][1]  := 0 ;
trtm_main_table[20].sol[34][2]  := 0 ;
trtm_main_table[20].sol[34][3]  := 0 ;
trtm_main_table[20].sol[34][4]  := 0 ;

trtm_main_table[20].sol[35][1]  := 0 ;
trtm_main_table[20].sol[35][2]  := 0 ;
trtm_main_table[20].sol[35][3]  := 0 ;
trtm_main_table[20].sol[35][4]  := 0 ;

trtm_main_table[20].sol[36][1]  := 0 ;
trtm_main_table[20].sol[36][2]  := 0 ;
trtm_main_table[20].sol[36][3]  := 0 ;
trtm_main_table[20].sol[36][4]  := 0 ;

trtm_main_table[20].sol[37][1]  := 19;
trtm_main_table[20].sol[37][2]  := 35;
trtm_main_table[20].sol[37][3]  := 16;
trtm_main_table[20].sol[37][4]  := 25;

trtm_main_table[20].sol[38][1]  := 0 ;
trtm_main_table[20].sol[38][2]  := 0 ;
trtm_main_table[20].sol[38][3]  := 0 ;
trtm_main_table[20].sol[38][4]  := 0 ;

trtm_main_table[20].sol[39][1]  := 1 ;
trtm_main_table[20].sol[39][2]  := 6 ;
trtm_main_table[20].sol[39][3]  := 0 ;
trtm_main_table[20].sol[39][4]  := 0 ;

trtm_main_table[21].id         := 21;
trtm_main_table[21].desc       := 'Мощность';


trtm_main_table[21].sol[1][1]  := 8 ;
trtm_main_table[21].sol[1][2]  := 36;
trtm_main_table[21].sol[1][3]  := 38;
trtm_main_table[21].sol[1][4]  := 31;

trtm_main_table[21].sol[2][1]  := 19;
trtm_main_table[21].sol[2][2]  := 26;
trtm_main_table[21].sol[2][3]  := 17;
trtm_main_table[21].sol[2][4]  := 27;

trtm_main_table[21].sol[3][1]  := 1 ;
trtm_main_table[21].sol[3][2]  := 10;
trtm_main_table[21].sol[3][3]  := 35;
trtm_main_table[21].sol[3][4]  := 37;

trtm_main_table[21].sol[4][1]  := 0 ;
trtm_main_table[21].sol[4][2]  := 0 ;
trtm_main_table[21].sol[4][3]  := 0 ;
trtm_main_table[21].sol[4][4]  := 0 ;

trtm_main_table[21].sol[5][1]  := 19;
trtm_main_table[21].sol[5][2]  := 38;
trtm_main_table[21].sol[5][3]  := 0 ;
trtm_main_table[21].sol[5][4]  := 0 ;

trtm_main_table[21].sol[6][1]  := 17;
trtm_main_table[21].sol[6][2]  := 32;
trtm_main_table[21].sol[6][3]  := 13;
trtm_main_table[21].sol[6][4]  := 38;

trtm_main_table[21].sol[7][1]  := 35;
trtm_main_table[21].sol[7][2]  := 6 ;
trtm_main_table[21].sol[7][3]  := 38;
trtm_main_table[21].sol[7][4]  := 0 ;

trtm_main_table[21].sol[8][1]  := 30;
trtm_main_table[21].sol[8][2]  := 6 ;
trtm_main_table[21].sol[8][3]  := 25;
trtm_main_table[21].sol[8][4]  := 0 ;

trtm_main_table[21].sol[9][1]  := 15;
trtm_main_table[21].sol[9][2]  := 35;
trtm_main_table[21].sol[9][3]  := 2 ;
trtm_main_table[21].sol[9][4]  := 0 ;

trtm_main_table[21].sol[10][1]  := 26;
trtm_main_table[21].sol[10][2]  := 2 ;
trtm_main_table[21].sol[10][3]  := 36;
trtm_main_table[21].sol[10][4]  := 35;

trtm_main_table[21].sol[11][1]  := 22;
trtm_main_table[21].sol[11][2]  := 10;
trtm_main_table[21].sol[11][3]  := 35;
trtm_main_table[21].sol[11][4]  := 0 ;

trtm_main_table[21].sol[12][1]  := 29;
trtm_main_table[21].sol[12][2]  := 14;
trtm_main_table[21].sol[12][3]  := 2 ;
trtm_main_table[21].sol[12][4]  := 40;

trtm_main_table[21].sol[13][1]  := 35;
trtm_main_table[21].sol[13][2]  := 32;
trtm_main_table[21].sol[13][3]  := 15;
trtm_main_table[21].sol[13][4]  := 31;

trtm_main_table[21].sol[14][1]  := 26;
trtm_main_table[21].sol[14][2]  := 10;
trtm_main_table[21].sol[14][3]  := 28;
trtm_main_table[21].sol[14][4]  := 0 ;

trtm_main_table[21].sol[15][1]  := 19;
trtm_main_table[21].sol[15][2]  := 35;
trtm_main_table[21].sol[15][3]  := 10;
trtm_main_table[21].sol[15][4]  := 38;

trtm_main_table[21].sol[16][1]  := 16;
trtm_main_table[21].sol[16][2]  := 0 ;
trtm_main_table[21].sol[16][3]  := 0 ;
trtm_main_table[21].sol[16][4]  := 0 ;

trtm_main_table[21].sol[17][1]  := 2 ;
trtm_main_table[21].sol[17][2]  := 14;
trtm_main_table[21].sol[17][3]  := 17;
trtm_main_table[21].sol[17][4]  := 25;

trtm_main_table[21].sol[18][1]  := 16;
trtm_main_table[21].sol[18][2]  := 6 ;
trtm_main_table[21].sol[18][3]  := 19;
trtm_main_table[21].sol[18][4]  := 0 ;

trtm_main_table[21].sol[19][1]  := 16;
trtm_main_table[21].sol[19][2]  := 6 ;
trtm_main_table[21].sol[19][3]  := 19;
trtm_main_table[21].sol[19][4]  := 37;

trtm_main_table[21].sol[20][1]  := 0 ;
trtm_main_table[21].sol[20][2]  := 0 ;
trtm_main_table[21].sol[20][3]  := 0 ;
trtm_main_table[21].sol[20][4]  := 0 ;

trtm_main_table[21].sol[21][1]  := 0 ;
trtm_main_table[21].sol[21][2]  := 0 ;
trtm_main_table[21].sol[21][3]  := 0 ;
trtm_main_table[21].sol[21][4]  := 0 ;

trtm_main_table[21].sol[22][1]  := 10;
trtm_main_table[21].sol[22][2]  := 35;
trtm_main_table[21].sol[22][3]  := 38;
trtm_main_table[21].sol[22][4]  := 0 ;

trtm_main_table[21].sol[23][1]  := 28;
trtm_main_table[21].sol[23][2]  := 27;
trtm_main_table[21].sol[23][3]  := 18;
trtm_main_table[21].sol[23][4]  := 38;

trtm_main_table[21].sol[24][1]  := 10;
trtm_main_table[21].sol[24][2]  := 19;
trtm_main_table[21].sol[24][3]  := 0 ;
trtm_main_table[21].sol[24][4]  := 0 ;

trtm_main_table[21].sol[25][1]  := 35;
trtm_main_table[21].sol[25][2]  := 20;
trtm_main_table[21].sol[25][3]  := 10;
trtm_main_table[21].sol[25][4]  := 6 ;

trtm_main_table[21].sol[26][1]  := 4 ;
trtm_main_table[21].sol[26][2]  := 34;
trtm_main_table[21].sol[26][3]  := 19;
trtm_main_table[21].sol[26][4]  := 0 ;

trtm_main_table[21].sol[27][1]  := 19;
trtm_main_table[21].sol[27][2]  := 24;
trtm_main_table[21].sol[27][3]  := 26;
trtm_main_table[21].sol[27][4]  := 31;

trtm_main_table[21].sol[28][1]  := 32;
trtm_main_table[21].sol[28][2]  := 15;
trtm_main_table[21].sol[28][3]  := 2 ;
trtm_main_table[21].sol[28][4]  := 0 ;

trtm_main_table[21].sol[29][1]  := 32;
trtm_main_table[21].sol[29][2]  := 2 ;
trtm_main_table[21].sol[29][3]  := 0 ;
trtm_main_table[21].sol[29][4]  := 0 ;

trtm_main_table[21].sol[30][1]  := 19;
trtm_main_table[21].sol[30][2]  := 22;
trtm_main_table[21].sol[30][3]  := 31;
trtm_main_table[21].sol[30][4]  := 2 ;

trtm_main_table[21].sol[31][1]  := 2 ;
trtm_main_table[21].sol[31][2]  := 35;
trtm_main_table[21].sol[31][3]  := 18;
trtm_main_table[21].sol[31][4]  := 0 ;

trtm_main_table[21].sol[32][1]  := 26;
trtm_main_table[21].sol[32][2]  := 10;
trtm_main_table[21].sol[32][3]  := 34;
trtm_main_table[21].sol[32][4]  := 0 ;

trtm_main_table[21].sol[33][1]  := 26;
trtm_main_table[21].sol[33][2]  := 35;
trtm_main_table[21].sol[33][3]  := 10;
trtm_main_table[21].sol[33][4]  := 0 ;

trtm_main_table[21].sol[34][1]  := 35;
trtm_main_table[21].sol[34][2]  := 2 ;
trtm_main_table[21].sol[34][3]  := 10;
trtm_main_table[21].sol[34][4]  := 34;

trtm_main_table[21].sol[35][1]  := 19;
trtm_main_table[21].sol[35][2]  := 17;
trtm_main_table[21].sol[35][3]  := 34;
trtm_main_table[21].sol[35][4]  := 0 ;

trtm_main_table[21].sol[36][1]  := 20;
trtm_main_table[21].sol[36][2]  := 19;
trtm_main_table[21].sol[36][3]  := 30;
trtm_main_table[21].sol[36][4]  := 34;

trtm_main_table[21].sol[37][1]  := 19;
trtm_main_table[21].sol[37][2]  := 35;
trtm_main_table[21].sol[37][3]  := 16;
trtm_main_table[21].sol[37][4]  := 0 ;

trtm_main_table[21].sol[38][1]  := 28;
trtm_main_table[21].sol[38][2]  := 2 ;
trtm_main_table[21].sol[38][3]  := 17;
trtm_main_table[21].sol[38][4]  := 0 ;

trtm_main_table[21].sol[39][1]  := 28;
trtm_main_table[21].sol[39][2]  := 35;
trtm_main_table[21].sol[39][3]  := 34;
trtm_main_table[21].sol[39][4]  := 0 ;

trtm_main_table[22].id         := 22;
trtm_main_table[22].desc       := 'Потери энергии';


trtm_main_table[22].sol[1][1]  := 15;
trtm_main_table[22].sol[1][2]  := 6 ;
trtm_main_table[22].sol[1][3]  := 19;
trtm_main_table[22].sol[1][4]  := 28;

trtm_main_table[22].sol[2][1]  := 19;
trtm_main_table[22].sol[2][2]  := 6 ;
trtm_main_table[22].sol[2][3]  := 18;
trtm_main_table[22].sol[2][4]  := 9 ;

trtm_main_table[22].sol[3][1]  := 7 ;
trtm_main_table[22].sol[3][2]  := 2 ;
trtm_main_table[22].sol[3][3]  := 6 ;
trtm_main_table[22].sol[3][4]  := 13;

trtm_main_table[22].sol[4][1]  := 6 ;
trtm_main_table[22].sol[4][2]  := 38;
trtm_main_table[22].sol[4][3]  := 7 ;
trtm_main_table[22].sol[4][4]  := 0 ;

trtm_main_table[22].sol[5][1]  := 15;
trtm_main_table[22].sol[5][2]  := 26;
trtm_main_table[22].sol[5][3]  := 17;
trtm_main_table[22].sol[5][4]  := 30;

trtm_main_table[22].sol[6][1]  := 17;
trtm_main_table[22].sol[6][2]  := 7 ;
trtm_main_table[22].sol[6][3]  := 30;
trtm_main_table[22].sol[6][4]  := 18;

trtm_main_table[22].sol[7][1]  := 7 ;
trtm_main_table[22].sol[7][2]  := 18;
trtm_main_table[22].sol[7][3]  := 23;
trtm_main_table[22].sol[7][4]  := 0 ;

trtm_main_table[22].sol[8][1]  := 7 ;
trtm_main_table[22].sol[8][2]  := 0 ;
trtm_main_table[22].sol[8][3]  := 0 ;
trtm_main_table[22].sol[8][4]  := 0 ;

trtm_main_table[22].sol[9][1]  := 16;
trtm_main_table[22].sol[9][2]  := 35;
trtm_main_table[22].sol[9][3]  := 38;
trtm_main_table[22].sol[9][4]  := 0 ;

trtm_main_table[22].sol[10][1]  := 36;
trtm_main_table[22].sol[10][2]  := 35;
trtm_main_table[22].sol[10][3]  := 0 ;
trtm_main_table[22].sol[10][4]  := 0 ;

trtm_main_table[22].sol[11][1]  := 0 ;
trtm_main_table[22].sol[11][2]  := 0 ;
trtm_main_table[22].sol[11][3]  := 0 ;
trtm_main_table[22].sol[11][4]  := 0 ;

trtm_main_table[22].sol[12][1]  := 0 ;
trtm_main_table[22].sol[12][2]  := 0 ;
trtm_main_table[22].sol[12][3]  := 0 ;
trtm_main_table[22].sol[12][4]  := 0 ;

trtm_main_table[22].sol[13][1]  := 14;
trtm_main_table[22].sol[13][2]  := 2 ;
trtm_main_table[22].sol[13][3]  := 39;
trtm_main_table[22].sol[13][4]  := 6 ;

trtm_main_table[22].sol[14][1]  := 26;
trtm_main_table[22].sol[14][2]  := 0 ;
trtm_main_table[22].sol[14][3]  := 0 ;
trtm_main_table[22].sol[14][4]  := 0 ;

trtm_main_table[22].sol[15][1]  := 0 ;
trtm_main_table[22].sol[15][2]  := 0 ;
trtm_main_table[22].sol[15][3]  := 0 ;
trtm_main_table[22].sol[15][4]  := 0 ;

trtm_main_table[22].sol[16][1]  := 0 ;
trtm_main_table[22].sol[16][2]  := 0 ;
trtm_main_table[22].sol[16][3]  := 0 ;
trtm_main_table[22].sol[16][4]  := 0 ;

trtm_main_table[22].sol[17][1]  := 19;
trtm_main_table[22].sol[17][2]  := 38;
trtm_main_table[22].sol[17][3]  := 7 ;
trtm_main_table[22].sol[17][4]  := 0 ;

trtm_main_table[22].sol[18][1]  := 1 ;
trtm_main_table[22].sol[18][2]  := 13;
trtm_main_table[22].sol[18][3]  := 32;
trtm_main_table[22].sol[18][4]  := 15;

trtm_main_table[22].sol[19][1]  := 0 ;
trtm_main_table[22].sol[19][2]  := 0 ;
trtm_main_table[22].sol[19][3]  := 0 ;
trtm_main_table[22].sol[19][4]  := 0 ;

trtm_main_table[22].sol[20][1]  := 0 ;
trtm_main_table[22].sol[20][2]  := 0 ;
trtm_main_table[22].sol[20][3]  := 0 ;
trtm_main_table[22].sol[20][4]  := 0 ;

trtm_main_table[22].sol[21][1]  := 3 ;
trtm_main_table[22].sol[21][2]  := 38;
trtm_main_table[22].sol[21][3]  := 0 ;
trtm_main_table[22].sol[21][4]  := 0 ;

trtm_main_table[22].sol[22][1]  := 0 ;
trtm_main_table[22].sol[22][2]  := 0 ;
trtm_main_table[22].sol[22][3]  := 0 ;
trtm_main_table[22].sol[22][4]  := 0 ;

trtm_main_table[22].sol[23][1]  := 35;
trtm_main_table[22].sol[23][2]  := 27;
trtm_main_table[22].sol[23][3]  := 2 ;
trtm_main_table[22].sol[23][4]  := 37;

trtm_main_table[22].sol[24][1]  := 19;
trtm_main_table[22].sol[24][2]  := 10;
trtm_main_table[22].sol[24][3]  := 0 ;
trtm_main_table[22].sol[24][4]  := 0 ;

trtm_main_table[22].sol[25][1]  := 10;
trtm_main_table[22].sol[25][2]  := 18;
trtm_main_table[22].sol[25][3]  := 32;
trtm_main_table[22].sol[25][4]  := 7 ;

trtm_main_table[22].sol[26][1]  := 7 ;
trtm_main_table[22].sol[26][2]  := 18;
trtm_main_table[22].sol[26][3]  := 25;
trtm_main_table[22].sol[26][4]  := 0 ;

trtm_main_table[22].sol[27][1]  := 11;
trtm_main_table[22].sol[27][2]  := 10;
trtm_main_table[22].sol[27][3]  := 35;
trtm_main_table[22].sol[27][4]  := 0 ;

trtm_main_table[22].sol[28][1]  := 32;
trtm_main_table[22].sol[28][2]  := 0 ;
trtm_main_table[22].sol[28][3]  := 0 ;
trtm_main_table[22].sol[28][4]  := 0 ;

trtm_main_table[22].sol[29][1]  := 0 ;
trtm_main_table[22].sol[29][2]  := 0 ;
trtm_main_table[22].sol[29][3]  := 0 ;
trtm_main_table[22].sol[29][4]  := 0 ;

trtm_main_table[22].sol[30][1]  := 21;
trtm_main_table[22].sol[30][2]  := 22;
trtm_main_table[22].sol[30][3]  := 35;
trtm_main_table[22].sol[30][4]  := 2 ;

trtm_main_table[22].sol[31][1]  := 21;
trtm_main_table[22].sol[31][2]  := 35;
trtm_main_table[22].sol[31][3]  := 2 ;
trtm_main_table[22].sol[31][4]  := 22;

trtm_main_table[22].sol[32][1]  := 0 ;
trtm_main_table[22].sol[32][2]  := 0 ;
trtm_main_table[22].sol[32][3]  := 0 ;
trtm_main_table[22].sol[32][4]  := 0 ;

trtm_main_table[22].sol[33][1]  := 35;
trtm_main_table[22].sol[33][2]  := 32;
trtm_main_table[22].sol[33][3]  := 1 ;
trtm_main_table[22].sol[33][4]  := 0 ;

trtm_main_table[22].sol[34][1]  := 2 ;
trtm_main_table[22].sol[34][2]  := 19;
trtm_main_table[22].sol[34][3]  := 0 ;
trtm_main_table[22].sol[34][4]  := 0 ;

trtm_main_table[22].sol[35][1]  := 0 ;
trtm_main_table[22].sol[35][2]  := 0 ;
trtm_main_table[22].sol[35][3]  := 0 ;
trtm_main_table[22].sol[35][4]  := 0 ;

trtm_main_table[22].sol[36][1]  := 7 ;
trtm_main_table[22].sol[36][2]  := 23;
trtm_main_table[22].sol[36][3]  := 0 ;
trtm_main_table[22].sol[36][4]  := 0 ;

trtm_main_table[22].sol[37][1]  := 35;
trtm_main_table[22].sol[37][2]  := 3 ;
trtm_main_table[22].sol[37][3]  := 15;
trtm_main_table[22].sol[37][4]  := 23;

trtm_main_table[22].sol[38][1]  := 2 ;
trtm_main_table[22].sol[38][2]  := 0 ;
trtm_main_table[22].sol[38][3]  := 0 ;
trtm_main_table[22].sol[38][4]  := 0 ;

trtm_main_table[22].sol[39][1]  := 28;
trtm_main_table[22].sol[39][2]  := 10;
trtm_main_table[22].sol[39][3]  := 29;
trtm_main_table[22].sol[39][4]  := 35;

trtm_main_table[23].id         := 23;
trtm_main_table[23].desc       := 'Потери вещества';


trtm_main_table[23].sol[1][1]  := 35;
trtm_main_table[23].sol[1][2]  := 6 ;
trtm_main_table[23].sol[1][3]  := 23;
trtm_main_table[23].sol[1][4]  := 40;

trtm_main_table[23].sol[2][1]  := 35;
trtm_main_table[23].sol[2][2]  := 6 ;
trtm_main_table[23].sol[2][3]  := 22;
trtm_main_table[23].sol[2][4]  := 32;

trtm_main_table[23].sol[3][1]  := 14;
trtm_main_table[23].sol[3][2]  := 29;
trtm_main_table[23].sol[3][3]  := 10;
trtm_main_table[23].sol[3][4]  := 39;

trtm_main_table[23].sol[4][1]  := 10;
trtm_main_table[23].sol[4][2]  := 28;
trtm_main_table[23].sol[4][3]  := 24;
trtm_main_table[23].sol[4][4]  := 0 ;

trtm_main_table[23].sol[5][1]  := 35;
trtm_main_table[23].sol[5][2]  := 2 ;
trtm_main_table[23].sol[5][3]  := 10;
trtm_main_table[23].sol[5][4]  := 31;

trtm_main_table[23].sol[6][1]  := 10;
trtm_main_table[23].sol[6][2]  := 18;
trtm_main_table[23].sol[6][3]  := 39;
trtm_main_table[23].sol[6][4]  := 31;

trtm_main_table[23].sol[7][1]  := 1 ;
trtm_main_table[23].sol[7][2]  := 29;
trtm_main_table[23].sol[7][3]  := 30;
trtm_main_table[23].sol[7][4]  := 36;

trtm_main_table[23].sol[8][1]  := 3 ;
trtm_main_table[23].sol[8][2]  := 39;
trtm_main_table[23].sol[8][3]  := 18;
trtm_main_table[23].sol[8][4]  := 31;

trtm_main_table[23].sol[9][1]  := 10;
trtm_main_table[23].sol[9][2]  := 13;
trtm_main_table[23].sol[9][3]  := 28;
trtm_main_table[23].sol[9][4]  := 38;

trtm_main_table[23].sol[10][1]  := 14;
trtm_main_table[23].sol[10][2]  := 15;
trtm_main_table[23].sol[10][3]  := 18;
trtm_main_table[23].sol[10][4]  := 40;

trtm_main_table[23].sol[11][1]  := 3 ;
trtm_main_table[23].sol[11][2]  := 36;
trtm_main_table[23].sol[11][3]  := 37;
trtm_main_table[23].sol[11][4]  := 10;

trtm_main_table[23].sol[12][1]  := 29;
trtm_main_table[23].sol[12][2]  := 35;
trtm_main_table[23].sol[12][3]  := 3 ;
trtm_main_table[23].sol[12][4]  := 5 ;

trtm_main_table[23].sol[13][1]  := 2 ;
trtm_main_table[23].sol[13][2]  := 14;
trtm_main_table[23].sol[13][3]  := 30;
trtm_main_table[23].sol[13][4]  := 40;

trtm_main_table[23].sol[14][1]  := 35;
trtm_main_table[23].sol[14][2]  := 28;
trtm_main_table[23].sol[14][3]  := 31;
trtm_main_table[23].sol[14][4]  := 40;

trtm_main_table[23].sol[15][1]  := 28;
trtm_main_table[23].sol[15][2]  := 27;
trtm_main_table[23].sol[15][3]  := 3 ;
trtm_main_table[23].sol[15][4]  := 18;

trtm_main_table[23].sol[16][1]  := 27;
trtm_main_table[23].sol[16][2]  := 16;
trtm_main_table[23].sol[16][3]  := 18;
trtm_main_table[23].sol[16][4]  := 38;

trtm_main_table[23].sol[17][1]  := 21;
trtm_main_table[23].sol[17][2]  := 36;
trtm_main_table[23].sol[17][3]  := 39;
trtm_main_table[23].sol[17][4]  := 31;

trtm_main_table[23].sol[18][1]  := 1 ;
trtm_main_table[23].sol[18][2]  := 6 ;
trtm_main_table[23].sol[18][3]  := 13;
trtm_main_table[23].sol[18][4]  := 0 ;

trtm_main_table[23].sol[19][1]  := 35;
trtm_main_table[23].sol[19][2]  := 18;
trtm_main_table[23].sol[19][3]  := 24;
trtm_main_table[23].sol[19][4]  := 5 ;

trtm_main_table[23].sol[20][1]  := 28;
trtm_main_table[23].sol[20][2]  := 27;
trtm_main_table[23].sol[20][3]  := 12;
trtm_main_table[23].sol[20][4]  := 31;

trtm_main_table[23].sol[21][1]  := 28;
trtm_main_table[23].sol[21][2]  := 27;
trtm_main_table[23].sol[21][3]  := 18;
trtm_main_table[23].sol[21][4]  := 38;

trtm_main_table[23].sol[22][1]  := 35;
trtm_main_table[23].sol[22][2]  := 27;
trtm_main_table[23].sol[22][3]  := 2 ;
trtm_main_table[23].sol[22][4]  := 31;

trtm_main_table[23].sol[23][1]  := 0 ;
trtm_main_table[23].sol[23][2]  := 0 ;
trtm_main_table[23].sol[23][3]  := 0 ;
trtm_main_table[23].sol[23][4]  := 0 ;

trtm_main_table[23].sol[24][1]  := 0 ;
trtm_main_table[23].sol[24][2]  := 0 ;
trtm_main_table[23].sol[24][3]  := 0 ;
trtm_main_table[23].sol[24][4]  := 0 ;

trtm_main_table[23].sol[25][1]  := 15;
trtm_main_table[23].sol[25][2]  := 18;
trtm_main_table[23].sol[25][3]  := 35;
trtm_main_table[23].sol[25][4]  := 10;

trtm_main_table[23].sol[26][1]  := 6 ;
trtm_main_table[23].sol[26][2]  := 3 ;
trtm_main_table[23].sol[26][3]  := 10;
trtm_main_table[23].sol[26][4]  := 24;

trtm_main_table[23].sol[27][1]  := 10;
trtm_main_table[23].sol[27][2]  := 29;
trtm_main_table[23].sol[27][3]  := 39;
trtm_main_table[23].sol[27][4]  := 35;

trtm_main_table[23].sol[28][1]  := 16;
trtm_main_table[23].sol[28][2]  := 34;
trtm_main_table[23].sol[28][3]  := 31;
trtm_main_table[23].sol[28][4]  := 28;

trtm_main_table[23].sol[29][1]  := 35;
trtm_main_table[23].sol[29][2]  := 10;
trtm_main_table[23].sol[29][3]  := 24;
trtm_main_table[23].sol[29][4]  := 31;

trtm_main_table[23].sol[30][1]  := 33;
trtm_main_table[23].sol[30][2]  := 22;
trtm_main_table[23].sol[30][3]  := 30;
trtm_main_table[23].sol[30][4]  := 40;

trtm_main_table[23].sol[31][1]  := 10;
trtm_main_table[23].sol[31][2]  := 1 ;
trtm_main_table[23].sol[31][3]  := 34;
trtm_main_table[23].sol[31][4]  := 29;

trtm_main_table[23].sol[32][1]  := 15;
trtm_main_table[23].sol[32][2]  := 34;
trtm_main_table[23].sol[32][3]  := 33;
trtm_main_table[23].sol[32][4]  := 0 ;

trtm_main_table[23].sol[33][1]  := 32;
trtm_main_table[23].sol[33][2]  := 28;
trtm_main_table[23].sol[33][3]  := 2 ;
trtm_main_table[23].sol[33][4]  := 24;

trtm_main_table[23].sol[34][1]  := 2 ;
trtm_main_table[23].sol[34][2]  := 35;
trtm_main_table[23].sol[34][3]  := 34;
trtm_main_table[23].sol[34][4]  := 27;

trtm_main_table[23].sol[35][1]  := 15;
trtm_main_table[23].sol[35][2]  := 10;
trtm_main_table[23].sol[35][3]  := 2 ;
trtm_main_table[23].sol[35][4]  := 0 ;

trtm_main_table[23].sol[36][1]  := 35;
trtm_main_table[23].sol[36][2]  := 10;
trtm_main_table[23].sol[36][3]  := 28;
trtm_main_table[23].sol[36][4]  := 24;

trtm_main_table[23].sol[37][1]  := 35;
trtm_main_table[23].sol[37][2]  := 18;
trtm_main_table[23].sol[37][3]  := 10;
trtm_main_table[23].sol[37][4]  := 13;

trtm_main_table[23].sol[38][1]  := 35;
trtm_main_table[23].sol[38][2]  := 10;
trtm_main_table[23].sol[38][3]  := 18;
trtm_main_table[23].sol[38][4]  := 0 ;

trtm_main_table[23].sol[39][1]  := 28;
trtm_main_table[23].sol[39][2]  := 35;
trtm_main_table[23].sol[39][3]  := 10;
trtm_main_table[23].sol[39][4]  := 23;

trtm_main_table[24].id         := 24;
trtm_main_table[24].desc       := 'Потери информации';


trtm_main_table[24].sol[1][1]  := 10;
trtm_main_table[24].sol[1][2]  := 24;
trtm_main_table[24].sol[1][3]  := 35;
trtm_main_table[24].sol[1][4]  := 0 ;

trtm_main_table[24].sol[2][1]  := 10;
trtm_main_table[24].sol[2][2]  := 35;
trtm_main_table[24].sol[2][3]  := 5 ;
trtm_main_table[24].sol[2][4]  := 0 ;

trtm_main_table[24].sol[3][1]  := 1 ;
trtm_main_table[24].sol[3][2]  := 26;
trtm_main_table[24].sol[3][3]  := 0 ;
trtm_main_table[24].sol[3][4]  := 0 ;

trtm_main_table[24].sol[4][1]  := 26;
trtm_main_table[24].sol[4][2]  := 0 ;
trtm_main_table[24].sol[4][3]  := 0 ;
trtm_main_table[24].sol[4][4]  := 0 ;

trtm_main_table[24].sol[5][1]  := 30;
trtm_main_table[24].sol[5][2]  := 26;
trtm_main_table[24].sol[5][3]  := 0 ;
trtm_main_table[24].sol[5][4]  := 0 ;

trtm_main_table[24].sol[6][1]  := 30;
trtm_main_table[24].sol[6][2]  := 16;
trtm_main_table[24].sol[6][3]  := 0 ;
trtm_main_table[24].sol[6][4]  := 0 ;

trtm_main_table[24].sol[7][1]  := 0 ;
trtm_main_table[24].sol[7][2]  := 0 ;
trtm_main_table[24].sol[7][3]  := 0 ;
trtm_main_table[24].sol[7][4]  := 0 ;

trtm_main_table[24].sol[8][1]  := 2 ;
trtm_main_table[24].sol[8][2]  := 22;
trtm_main_table[24].sol[8][3]  := 0 ;
trtm_main_table[24].sol[8][4]  := 0 ;

trtm_main_table[24].sol[9][1]  := 26;
trtm_main_table[24].sol[9][2]  := 32;
trtm_main_table[24].sol[9][3]  := 0 ;
trtm_main_table[24].sol[9][4]  := 0 ;

trtm_main_table[24].sol[10][1]  := 0 ;
trtm_main_table[24].sol[10][2]  := 0 ;
trtm_main_table[24].sol[10][3]  := 0 ;
trtm_main_table[24].sol[10][4]  := 0 ;

trtm_main_table[24].sol[11][1]  := 0 ;
trtm_main_table[24].sol[11][2]  := 0 ;
trtm_main_table[24].sol[11][3]  := 0 ;
trtm_main_table[24].sol[11][4]  := 0 ;

trtm_main_table[24].sol[12][1]  := 0 ;
trtm_main_table[24].sol[12][2]  := 0 ;
trtm_main_table[24].sol[12][3]  := 0 ;
trtm_main_table[24].sol[12][4]  := 0 ;

trtm_main_table[24].sol[13][1]  := 0 ;
trtm_main_table[24].sol[13][2]  := 0 ;
trtm_main_table[24].sol[13][3]  := 0 ;
trtm_main_table[24].sol[13][4]  := 0 ;

trtm_main_table[24].sol[14][1]  := 0 ;
trtm_main_table[24].sol[14][2]  := 0 ;
trtm_main_table[24].sol[14][3]  := 0 ;
trtm_main_table[24].sol[14][4]  := 0 ;

trtm_main_table[24].sol[15][1]  := 10;
trtm_main_table[24].sol[15][2]  := 0 ;
trtm_main_table[24].sol[15][3]  := 0 ;
trtm_main_table[24].sol[15][4]  := 0 ;

trtm_main_table[24].sol[16][1]  := 10;
trtm_main_table[24].sol[16][2]  := 0 ;
trtm_main_table[24].sol[16][3]  := 0 ;
trtm_main_table[24].sol[16][4]  := 0 ;

trtm_main_table[24].sol[17][1]  := 0 ;
trtm_main_table[24].sol[17][2]  := 0 ;
trtm_main_table[24].sol[17][3]  := 0 ;
trtm_main_table[24].sol[17][4]  := 0 ;

trtm_main_table[24].sol[18][1]  := 19;
trtm_main_table[24].sol[18][2]  := 0 ;
trtm_main_table[24].sol[18][3]  := 0 ;
trtm_main_table[24].sol[18][4]  := 0 ;

trtm_main_table[24].sol[19][1]  := 0 ;
trtm_main_table[24].sol[19][2]  := 0 ;
trtm_main_table[24].sol[19][3]  := 0 ;
trtm_main_table[24].sol[19][4]  := 0 ;

trtm_main_table[24].sol[20][1]  := 0 ;
trtm_main_table[24].sol[20][2]  := 0 ;
trtm_main_table[24].sol[20][3]  := 0 ;
trtm_main_table[24].sol[20][4]  := 0 ;

trtm_main_table[24].sol[21][1]  := 10;
trtm_main_table[24].sol[21][2]  := 19;
trtm_main_table[24].sol[21][3]  := 0 ;
trtm_main_table[24].sol[21][4]  := 0 ;

trtm_main_table[24].sol[22][1]  := 19;
trtm_main_table[24].sol[22][2]  := 10;
trtm_main_table[24].sol[22][3]  := 0 ;
trtm_main_table[24].sol[22][4]  := 0 ;

trtm_main_table[24].sol[23][1]  := 0 ;
trtm_main_table[24].sol[23][2]  := 0 ;
trtm_main_table[24].sol[23][3]  := 0 ;
trtm_main_table[24].sol[23][4]  := 0 ;

trtm_main_table[24].sol[24][1]  := 0 ;
trtm_main_table[24].sol[24][2]  := 0 ;
trtm_main_table[24].sol[24][3]  := 0 ;
trtm_main_table[24].sol[24][4]  := 0 ;

trtm_main_table[24].sol[25][1]  := 24;
trtm_main_table[24].sol[25][2]  := 26;
trtm_main_table[24].sol[25][3]  := 28;
trtm_main_table[24].sol[25][4]  := 32;

trtm_main_table[24].sol[26][1]  := 24;
trtm_main_table[24].sol[26][2]  := 28;
trtm_main_table[24].sol[26][3]  := 35;
trtm_main_table[24].sol[26][4]  := 0 ;

trtm_main_table[24].sol[27][1]  := 10;
trtm_main_table[24].sol[27][2]  := 28;
trtm_main_table[24].sol[27][3]  := 23;
trtm_main_table[24].sol[27][4]  := 0 ;

trtm_main_table[24].sol[28][1]  := 0 ;
trtm_main_table[24].sol[28][2]  := 0 ;
trtm_main_table[24].sol[28][3]  := 0 ;
trtm_main_table[24].sol[28][4]  := 0 ;

trtm_main_table[24].sol[29][1]  := 0 ;
trtm_main_table[24].sol[29][2]  := 0 ;
trtm_main_table[24].sol[29][3]  := 0 ;
trtm_main_table[24].sol[29][4]  := 0 ;

trtm_main_table[24].sol[30][1]  := 22;
trtm_main_table[24].sol[30][2]  := 10;
trtm_main_table[24].sol[30][3]  := 1 ;
trtm_main_table[24].sol[30][4]  := 0 ;

trtm_main_table[24].sol[31][1]  := 10;
trtm_main_table[24].sol[31][2]  := 21;
trtm_main_table[24].sol[31][3]  := 22;
trtm_main_table[24].sol[31][4]  := 0 ;

trtm_main_table[24].sol[32][1]  := 32;
trtm_main_table[24].sol[32][2]  := 0 ;
trtm_main_table[24].sol[32][3]  := 0 ;
trtm_main_table[24].sol[32][4]  := 0 ;

trtm_main_table[24].sol[33][1]  := 27;
trtm_main_table[24].sol[33][2]  := 22;
trtm_main_table[24].sol[33][3]  := 0 ;
trtm_main_table[24].sol[33][4]  := 0 ;

trtm_main_table[24].sol[34][1]  := 0 ;
trtm_main_table[24].sol[34][2]  := 0 ;
trtm_main_table[24].sol[34][3]  := 0 ;
trtm_main_table[24].sol[34][4]  := 0 ;

trtm_main_table[24].sol[35][1]  := 0 ;
trtm_main_table[24].sol[35][2]  := 0 ;
trtm_main_table[24].sol[35][3]  := 0 ;
trtm_main_table[24].sol[35][4]  := 0 ;

trtm_main_table[24].sol[36][1]  := 0 ;
trtm_main_table[24].sol[36][2]  := 0 ;
trtm_main_table[24].sol[36][3]  := 0 ;
trtm_main_table[24].sol[36][4]  := 0 ;

trtm_main_table[24].sol[37][1]  := 35;
trtm_main_table[24].sol[37][2]  := 33;
trtm_main_table[24].sol[37][3]  := 0 ;
trtm_main_table[24].sol[37][4]  := 0 ;

trtm_main_table[24].sol[38][1]  := 35;
trtm_main_table[24].sol[38][2]  := 0 ;
trtm_main_table[24].sol[38][3]  := 0 ;
trtm_main_table[24].sol[38][4]  := 0 ;

trtm_main_table[24].sol[39][1]  := 13;
trtm_main_table[24].sol[39][2]  := 23;
trtm_main_table[24].sol[39][3]  := 15;
trtm_main_table[24].sol[39][4]  := 0 ;

trtm_main_table[25].id         := 25;
trtm_main_table[25].desc       := 'Потери времени';


trtm_main_table[25].sol[1][1]  := 10;
trtm_main_table[25].sol[1][2]  := 20;
trtm_main_table[25].sol[1][3]  := 37;
trtm_main_table[25].sol[1][4]  := 35;

trtm_main_table[25].sol[2][1]  := 10;
trtm_main_table[25].sol[2][2]  := 20;
trtm_main_table[25].sol[2][3]  := 26;
trtm_main_table[25].sol[2][4]  := 5 ;

trtm_main_table[25].sol[3][1]  := 15;
trtm_main_table[25].sol[3][2]  := 2 ;
trtm_main_table[25].sol[3][3]  := 29;
trtm_main_table[25].sol[3][4]  := 0 ;

trtm_main_table[25].sol[4][1]  := 30;
trtm_main_table[25].sol[4][2]  := 24;
trtm_main_table[25].sol[4][3]  := 14;
trtm_main_table[25].sol[4][4]  := 5 ;

trtm_main_table[25].sol[5][1]  := 26;
trtm_main_table[25].sol[5][2]  := 4 ;
trtm_main_table[25].sol[5][3]  := 5 ;
trtm_main_table[25].sol[5][4]  := 16;

trtm_main_table[25].sol[6][1]  := 10;
trtm_main_table[25].sol[6][2]  := 35;
trtm_main_table[25].sol[6][3]  := 17;
trtm_main_table[25].sol[6][4]  := 4 ;

trtm_main_table[25].sol[7][1]  := 2 ;
trtm_main_table[25].sol[7][2]  := 5 ;
trtm_main_table[25].sol[7][3]  := 34;
trtm_main_table[25].sol[7][4]  := 10;

trtm_main_table[25].sol[8][1]  := 35;
trtm_main_table[25].sol[8][2]  := 16;
trtm_main_table[25].sol[8][3]  := 32;
trtm_main_table[25].sol[8][4]  := 18;

trtm_main_table[25].sol[9][1]  := 0 ;
trtm_main_table[25].sol[9][2]  := 0 ;
trtm_main_table[25].sol[9][3]  := 0 ;
trtm_main_table[25].sol[9][4]  := 0 ;

trtm_main_table[25].sol[10][1]  := 10;
trtm_main_table[25].sol[10][2]  := 37;
trtm_main_table[25].sol[10][3]  := 36;
trtm_main_table[25].sol[10][4]  := 5 ;

trtm_main_table[25].sol[11][1]  := 37;
trtm_main_table[25].sol[11][2]  := 36;
trtm_main_table[25].sol[11][3]  := 4 ;
trtm_main_table[25].sol[11][4]  := 0 ;

trtm_main_table[25].sol[12][1]  := 4 ;
trtm_main_table[25].sol[12][2]  := 10;
trtm_main_table[25].sol[12][3]  := 34;
trtm_main_table[25].sol[12][4]  := 17;

trtm_main_table[25].sol[13][1]  := 35;
trtm_main_table[25].sol[13][2]  := 3 ;
trtm_main_table[25].sol[13][3]  := 22;
trtm_main_table[25].sol[13][4]  := 5 ;

trtm_main_table[25].sol[14][1]  := 29;
trtm_main_table[25].sol[14][2]  := 3 ;
trtm_main_table[25].sol[14][3]  := 28;
trtm_main_table[25].sol[14][4]  := 18;

trtm_main_table[25].sol[15][1]  := 20;
trtm_main_table[25].sol[15][2]  := 10;
trtm_main_table[25].sol[15][3]  := 28;
trtm_main_table[25].sol[15][4]  := 18;

trtm_main_table[25].sol[16][1]  := 28;
trtm_main_table[25].sol[16][2]  := 20;
trtm_main_table[25].sol[16][3]  := 10;
trtm_main_table[25].sol[16][4]  := 16;

trtm_main_table[25].sol[17][1]  := 35;
trtm_main_table[25].sol[17][2]  := 29;
trtm_main_table[25].sol[17][3]  := 21;
trtm_main_table[25].sol[17][4]  := 18;

trtm_main_table[25].sol[18][1]  := 1 ;
trtm_main_table[25].sol[18][2]  := 19;
trtm_main_table[25].sol[18][3]  := 26;
trtm_main_table[25].sol[18][4]  := 17;

trtm_main_table[25].sol[19][1]  := 35;
trtm_main_table[25].sol[19][2]  := 38;
trtm_main_table[25].sol[19][3]  := 19;
trtm_main_table[25].sol[19][4]  := 18;

trtm_main_table[25].sol[20][1]  := 1 ;
trtm_main_table[25].sol[20][2]  := 0 ;
trtm_main_table[25].sol[20][3]  := 0 ;
trtm_main_table[25].sol[20][4]  := 0 ;

trtm_main_table[25].sol[21][1]  := 35;
trtm_main_table[25].sol[21][2]  := 20;
trtm_main_table[25].sol[21][3]  := 10;
trtm_main_table[25].sol[21][4]  := 6 ;

trtm_main_table[25].sol[22][1]  := 10;
trtm_main_table[25].sol[22][2]  := 5 ;
trtm_main_table[25].sol[22][3]  := 18;
trtm_main_table[25].sol[22][4]  := 32;

trtm_main_table[25].sol[23][1]  := 35;
trtm_main_table[25].sol[23][2]  := 18;
trtm_main_table[25].sol[23][3]  := 10;
trtm_main_table[25].sol[23][4]  := 39;

trtm_main_table[25].sol[24][1]  := 24;
trtm_main_table[25].sol[24][2]  := 26;
trtm_main_table[25].sol[24][3]  := 28;
trtm_main_table[25].sol[24][4]  := 32;

trtm_main_table[25].sol[25][1]  := 0 ;
trtm_main_table[25].sol[25][2]  := 0 ;
trtm_main_table[25].sol[25][3]  := 0 ;
trtm_main_table[25].sol[25][4]  := 0 ;

trtm_main_table[25].sol[26][1]  := 35;
trtm_main_table[25].sol[26][2]  := 38;
trtm_main_table[25].sol[26][3]  := 18;
trtm_main_table[25].sol[26][4]  := 16;

trtm_main_table[25].sol[27][1]  := 10;
trtm_main_table[25].sol[27][2]  := 30;
trtm_main_table[25].sol[27][3]  := 4 ;
trtm_main_table[25].sol[27][4]  := 0 ;

trtm_main_table[25].sol[28][1]  := 24;
trtm_main_table[25].sol[28][2]  := 34;
trtm_main_table[25].sol[28][3]  := 28;
trtm_main_table[25].sol[28][4]  := 32;

trtm_main_table[25].sol[29][1]  := 24;
trtm_main_table[25].sol[29][2]  := 26;
trtm_main_table[25].sol[29][3]  := 28;
trtm_main_table[25].sol[29][4]  := 18;

trtm_main_table[25].sol[30][1]  := 35;
trtm_main_table[25].sol[30][2]  := 18;
trtm_main_table[25].sol[30][3]  := 34;
trtm_main_table[25].sol[30][4]  := 0 ;

trtm_main_table[25].sol[31][1]  := 35;
trtm_main_table[25].sol[31][2]  := 22;
trtm_main_table[25].sol[31][3]  := 18;
trtm_main_table[25].sol[31][4]  := 39;

trtm_main_table[25].sol[32][1]  := 35;
trtm_main_table[25].sol[32][2]  := 28;
trtm_main_table[25].sol[32][3]  := 34;
trtm_main_table[25].sol[32][4]  := 4 ;

trtm_main_table[25].sol[33][1]  := 4 ;
trtm_main_table[25].sol[33][2]  := 28;
trtm_main_table[25].sol[33][3]  := 10;
trtm_main_table[25].sol[33][4]  := 34;

trtm_main_table[25].sol[34][1]  := 32;
trtm_main_table[25].sol[34][2]  := 1 ;
trtm_main_table[25].sol[34][3]  := 10;
trtm_main_table[25].sol[34][4]  := 0 ;

trtm_main_table[25].sol[35][1]  := 35;
trtm_main_table[25].sol[35][2]  := 28;
trtm_main_table[25].sol[35][3]  := 0 ;
trtm_main_table[25].sol[35][4]  := 0 ;

trtm_main_table[25].sol[36][1]  := 6 ;
trtm_main_table[25].sol[36][2]  := 29;
trtm_main_table[25].sol[36][3]  := 0 ;
trtm_main_table[25].sol[36][4]  := 0 ;

trtm_main_table[25].sol[37][1]  := 18;
trtm_main_table[25].sol[37][2]  := 28;
trtm_main_table[25].sol[37][3]  := 32;
trtm_main_table[25].sol[37][4]  := 10;

trtm_main_table[25].sol[38][1]  := 24;
trtm_main_table[25].sol[38][2]  := 28;
trtm_main_table[25].sol[38][3]  := 35;
trtm_main_table[25].sol[38][4]  := 30;

trtm_main_table[25].sol[39][1]  := 0 ;
trtm_main_table[25].sol[39][2]  := 0 ;
trtm_main_table[25].sol[39][3]  := 0 ;
trtm_main_table[25].sol[39][4]  := 0 ;

trtm_main_table[26].id         := 26;
trtm_main_table[26].desc       := 'Количество вещества';


trtm_main_table[26].sol[1][1]  := 35;
trtm_main_table[26].sol[1][2]  := 6 ;
trtm_main_table[26].sol[1][3]  := 18;
trtm_main_table[26].sol[1][4]  := 31;

trtm_main_table[26].sol[2][1]  := 27;
trtm_main_table[26].sol[2][2]  := 26;
trtm_main_table[26].sol[2][3]  := 18;
trtm_main_table[26].sol[2][4]  := 35;

trtm_main_table[26].sol[3][1]  := 29;
trtm_main_table[26].sol[3][2]  := 14;
trtm_main_table[26].sol[3][3]  := 35;
trtm_main_table[26].sol[3][4]  := 18;

trtm_main_table[26].sol[4][1]  := 0 ;
trtm_main_table[26].sol[4][2]  := 0 ;
trtm_main_table[26].sol[4][3]  := 0 ;
trtm_main_table[26].sol[4][4]  := 0 ;

trtm_main_table[26].sol[5][1]  := 15;
trtm_main_table[26].sol[5][2]  := 14;
trtm_main_table[26].sol[5][3]  := 29;
trtm_main_table[26].sol[5][4]  := 0 ;

trtm_main_table[26].sol[6][1]  := 2 ;
trtm_main_table[26].sol[6][2]  := 18;
trtm_main_table[26].sol[6][3]  := 40;
trtm_main_table[26].sol[6][4]  := 4 ;

trtm_main_table[26].sol[7][1]  := 15;
trtm_main_table[26].sol[7][2]  := 20;
trtm_main_table[26].sol[7][3]  := 29;
trtm_main_table[26].sol[7][4]  := 0 ;

trtm_main_table[26].sol[8][1]  := 0 ;
trtm_main_table[26].sol[8][2]  := 0 ;
trtm_main_table[26].sol[8][3]  := 0 ;
trtm_main_table[26].sol[8][4]  := 0 ;

trtm_main_table[26].sol[9][1]  := 35;
trtm_main_table[26].sol[9][2]  := 29;
trtm_main_table[26].sol[9][3]  := 34;
trtm_main_table[26].sol[9][4]  := 28;

trtm_main_table[26].sol[10][1]  := 35;
trtm_main_table[26].sol[10][2]  := 14;
trtm_main_table[26].sol[10][3]  := 3 ;
trtm_main_table[26].sol[10][4]  := 0 ;

trtm_main_table[26].sol[11][1]  := 10;
trtm_main_table[26].sol[11][2]  := 36;
trtm_main_table[26].sol[11][3]  := 14;
trtm_main_table[26].sol[11][4]  := 3 ;

trtm_main_table[26].sol[12][1]  := 35;
trtm_main_table[26].sol[12][2]  := 14;
trtm_main_table[26].sol[12][3]  := 0 ;
trtm_main_table[26].sol[12][4]  := 0 ;

trtm_main_table[26].sol[13][1]  := 15;
trtm_main_table[26].sol[13][2]  := 17;
trtm_main_table[26].sol[13][3]  := 40;
trtm_main_table[26].sol[13][4]  := 0 ;

trtm_main_table[26].sol[14][1]  := 14;
trtm_main_table[26].sol[14][2]  := 35;
trtm_main_table[26].sol[14][3]  := 34;
trtm_main_table[26].sol[14][4]  := 10;

trtm_main_table[26].sol[15][1]  := 3 ;
trtm_main_table[26].sol[15][2]  := 35;
trtm_main_table[26].sol[15][3]  := 10;
trtm_main_table[26].sol[15][4]  := 40;

trtm_main_table[26].sol[16][1]  := 3 ;
trtm_main_table[26].sol[16][2]  := 35;
trtm_main_table[26].sol[16][3]  := 31;
trtm_main_table[26].sol[16][4]  := 0 ;

trtm_main_table[26].sol[17][1]  := 3 ;
trtm_main_table[26].sol[17][2]  := 17;
trtm_main_table[26].sol[17][3]  := 39;
trtm_main_table[26].sol[17][4]  := 0 ;

trtm_main_table[26].sol[18][1]  := 0 ;
trtm_main_table[26].sol[18][2]  := 0 ;
trtm_main_table[26].sol[18][3]  := 0 ;
trtm_main_table[26].sol[18][4]  := 0 ;

trtm_main_table[26].sol[19][1]  := 34;
trtm_main_table[26].sol[19][2]  := 29;
trtm_main_table[26].sol[19][3]  := 16;
trtm_main_table[26].sol[19][4]  := 18;

trtm_main_table[26].sol[20][1]  := 3 ;
trtm_main_table[26].sol[20][2]  := 35;
trtm_main_table[26].sol[20][3]  := 31;
trtm_main_table[26].sol[20][4]  := 0 ;

trtm_main_table[26].sol[21][1]  := 35;
trtm_main_table[26].sol[21][2]  := 0 ;
trtm_main_table[26].sol[21][3]  := 0 ;
trtm_main_table[26].sol[21][4]  := 0 ;

trtm_main_table[26].sol[22][1]  := 7 ;
trtm_main_table[26].sol[22][2]  := 18;
trtm_main_table[26].sol[22][3]  := 25;
trtm_main_table[26].sol[22][4]  := 0 ;

trtm_main_table[26].sol[23][1]  := 6 ;
trtm_main_table[26].sol[23][2]  := 3 ;
trtm_main_table[26].sol[23][3]  := 10;
trtm_main_table[26].sol[23][4]  := 24;

trtm_main_table[26].sol[24][1]  := 24;
trtm_main_table[26].sol[24][2]  := 28;
trtm_main_table[26].sol[24][3]  := 35;
trtm_main_table[26].sol[24][4]  := 0 ;

trtm_main_table[26].sol[25][1]  := 35;
trtm_main_table[26].sol[25][2]  := 38;
trtm_main_table[26].sol[25][3]  := 18;
trtm_main_table[26].sol[25][4]  := 16;

trtm_main_table[26].sol[26][1]  := 0 ;
trtm_main_table[26].sol[26][2]  := 0 ;
trtm_main_table[26].sol[26][3]  := 0 ;
trtm_main_table[26].sol[26][4]  := 0 ;

trtm_main_table[26].sol[27][1]  := 18;
trtm_main_table[26].sol[27][2]  := 3 ;
trtm_main_table[26].sol[27][3]  := 28;
trtm_main_table[26].sol[27][4]  := 40;

trtm_main_table[26].sol[28][1]  := 3 ;
trtm_main_table[26].sol[28][2]  := 2 ;
trtm_main_table[26].sol[28][3]  := 28;
trtm_main_table[26].sol[28][4]  := 0 ;

trtm_main_table[26].sol[29][1]  := 33;
trtm_main_table[26].sol[29][2]  := 30;
trtm_main_table[26].sol[29][3]  := 0 ;
trtm_main_table[26].sol[29][4]  := 0 ;

trtm_main_table[26].sol[30][1]  := 35;
trtm_main_table[26].sol[30][2]  := 33;
trtm_main_table[26].sol[30][3]  := 29;
trtm_main_table[26].sol[30][4]  := 31;

trtm_main_table[26].sol[31][1]  := 3 ;
trtm_main_table[26].sol[31][2]  := 35;
trtm_main_table[26].sol[31][3]  := 40;
trtm_main_table[26].sol[31][4]  := 39;

trtm_main_table[26].sol[32][1]  := 29;
trtm_main_table[26].sol[32][2]  := 1 ;
trtm_main_table[26].sol[32][3]  := 35;
trtm_main_table[26].sol[32][4]  := 27;

trtm_main_table[26].sol[33][1]  := 35;
trtm_main_table[26].sol[33][2]  := 29;
trtm_main_table[26].sol[33][3]  := 10;
trtm_main_table[26].sol[33][4]  := 25;

trtm_main_table[26].sol[34][1]  := 2 ;
trtm_main_table[26].sol[34][2]  := 32;
trtm_main_table[26].sol[34][3]  := 10;
trtm_main_table[26].sol[34][4]  := 25;

trtm_main_table[26].sol[35][1]  := 15;
trtm_main_table[26].sol[35][2]  := 3 ;
trtm_main_table[26].sol[35][3]  := 29;
trtm_main_table[26].sol[35][4]  := 0 ;

trtm_main_table[26].sol[36][1]  := 3 ;
trtm_main_table[26].sol[36][2]  := 13;
trtm_main_table[26].sol[36][3]  := 27;
trtm_main_table[26].sol[36][4]  := 10;

trtm_main_table[26].sol[37][1]  := 3 ;
trtm_main_table[26].sol[37][2]  := 27;
trtm_main_table[26].sol[37][3]  := 29;
trtm_main_table[26].sol[37][4]  := 18;

trtm_main_table[26].sol[38][1]  := 8 ;
trtm_main_table[26].sol[38][2]  := 35;
trtm_main_table[26].sol[38][3]  := 0 ;
trtm_main_table[26].sol[38][4]  := 0 ;

trtm_main_table[26].sol[39][1]  := 13;
trtm_main_table[26].sol[39][2]  := 29;
trtm_main_table[26].sol[39][3]  := 3 ;
trtm_main_table[26].sol[39][4]  := 27;

trtm_main_table[27].id         := 27;
trtm_main_table[27].desc       := 'Надежность';


trtm_main_table[27].sol[1][1]  := 3 ;
trtm_main_table[27].sol[1][2]  := 8 ;
trtm_main_table[27].sol[1][3]  := 10;
trtm_main_table[27].sol[1][4]  := 40;

trtm_main_table[27].sol[2][1]  := 3 ;
trtm_main_table[27].sol[2][2]  := 10;
trtm_main_table[27].sol[2][3]  := 8 ;
trtm_main_table[27].sol[2][4]  := 28;

trtm_main_table[27].sol[3][1]  := 15;
trtm_main_table[27].sol[3][2]  := 9 ;
trtm_main_table[27].sol[3][3]  := 14;
trtm_main_table[27].sol[3][4]  := 4 ;

trtm_main_table[27].sol[4][1]  := 15;
trtm_main_table[27].sol[4][2]  := 29;
trtm_main_table[27].sol[4][3]  := 28;
trtm_main_table[27].sol[4][4]  := 11;

trtm_main_table[27].sol[5][1]  := 17;
trtm_main_table[27].sol[5][2]  := 10;
trtm_main_table[27].sol[5][3]  := 14;
trtm_main_table[27].sol[5][4]  := 16;

trtm_main_table[27].sol[6][1]  := 32;
trtm_main_table[27].sol[6][2]  := 35;
trtm_main_table[27].sol[6][3]  := 40;
trtm_main_table[27].sol[6][4]  := 4 ;

trtm_main_table[27].sol[7][1]  := 3 ;
trtm_main_table[27].sol[7][2]  := 10;
trtm_main_table[27].sol[7][3]  := 14;
trtm_main_table[27].sol[7][4]  := 24;

trtm_main_table[27].sol[8][1]  := 2 ;
trtm_main_table[27].sol[8][2]  := 35;
trtm_main_table[27].sol[8][3]  := 24;
trtm_main_table[27].sol[8][4]  := 0 ;

trtm_main_table[27].sol[9][1]  := 21;
trtm_main_table[27].sol[9][2]  := 35;
trtm_main_table[27].sol[9][3]  := 11;
trtm_main_table[27].sol[9][4]  := 28;

trtm_main_table[27].sol[10][1]  := 8 ;
trtm_main_table[27].sol[10][2]  := 28;
trtm_main_table[27].sol[10][3]  := 10;
trtm_main_table[27].sol[10][4]  := 3 ;

trtm_main_table[27].sol[11][1]  := 10;
trtm_main_table[27].sol[11][2]  := 24;
trtm_main_table[27].sol[11][3]  := 35;
trtm_main_table[27].sol[11][4]  := 19;

trtm_main_table[27].sol[12][1]  := 35;
trtm_main_table[27].sol[12][2]  := 1 ;
trtm_main_table[27].sol[12][3]  := 16;
trtm_main_table[27].sol[12][4]  := 11;

trtm_main_table[27].sol[13][1]  := 0 ;
trtm_main_table[27].sol[13][2]  := 0 ;
trtm_main_table[27].sol[13][3]  := 0 ;
trtm_main_table[27].sol[13][4]  := 0 ;

trtm_main_table[27].sol[14][1]  := 11;
trtm_main_table[27].sol[14][2]  := 28;
trtm_main_table[27].sol[14][3]  := 0 ;
trtm_main_table[27].sol[14][4]  := 0 ;

trtm_main_table[27].sol[15][1]  := 2 ;
trtm_main_table[27].sol[15][2]  := 35;
trtm_main_table[27].sol[15][3]  := 3 ;
trtm_main_table[27].sol[15][4]  := 25;

trtm_main_table[27].sol[16][1]  := 34;
trtm_main_table[27].sol[16][2]  := 27;
trtm_main_table[27].sol[16][3]  := 6 ;
trtm_main_table[27].sol[16][4]  := 40;

trtm_main_table[27].sol[17][1]  := 3 ;
trtm_main_table[27].sol[17][2]  := 35;
trtm_main_table[27].sol[17][3]  := 10;
trtm_main_table[27].sol[17][4]  := 0 ;

trtm_main_table[27].sol[18][1]  := 11;
trtm_main_table[27].sol[18][2]  := 32;
trtm_main_table[27].sol[18][3]  := 13;
trtm_main_table[27].sol[18][4]  := 0 ;

trtm_main_table[27].sol[19][1]  := 21;
trtm_main_table[27].sol[19][2]  := 11;
trtm_main_table[27].sol[19][3]  := 27;
trtm_main_table[27].sol[19][4]  := 19;

trtm_main_table[27].sol[20][1]  := 36;
trtm_main_table[27].sol[20][2]  := 23;
trtm_main_table[27].sol[20][3]  := 0 ;
trtm_main_table[27].sol[20][4]  := 0 ;

trtm_main_table[27].sol[21][1]  := 21;
trtm_main_table[27].sol[21][2]  := 11;
trtm_main_table[27].sol[21][3]  := 26;
trtm_main_table[27].sol[21][4]  := 31;

trtm_main_table[27].sol[22][1]  := 10;
trtm_main_table[27].sol[22][2]  := 11;
trtm_main_table[27].sol[22][3]  := 35;
trtm_main_table[27].sol[22][4]  := 0 ;

trtm_main_table[27].sol[23][1]  := 10;
trtm_main_table[27].sol[23][2]  := 35;
trtm_main_table[27].sol[23][3]  := 29;
trtm_main_table[27].sol[23][4]  := 39;

trtm_main_table[27].sol[24][1]  := 10;
trtm_main_table[27].sol[24][2]  := 28;
trtm_main_table[27].sol[24][3]  := 0 ;
trtm_main_table[27].sol[24][4]  := 0 ;

trtm_main_table[27].sol[25][1]  := 10;
trtm_main_table[27].sol[25][2]  := 30;
trtm_main_table[27].sol[25][3]  := 4 ;
trtm_main_table[27].sol[25][4]  := 0 ;

trtm_main_table[27].sol[26][1]  := 21;
trtm_main_table[27].sol[26][2]  := 28;
trtm_main_table[27].sol[26][3]  := 40;
trtm_main_table[27].sol[26][4]  := 3 ;

trtm_main_table[27].sol[27][1]  := 0 ;
trtm_main_table[27].sol[27][2]  := 0 ;
trtm_main_table[27].sol[27][3]  := 0 ;
trtm_main_table[27].sol[27][4]  := 0 ;

trtm_main_table[27].sol[28][1]  := 32;
trtm_main_table[27].sol[28][2]  := 3 ;
trtm_main_table[27].sol[28][3]  := 11;
trtm_main_table[27].sol[28][4]  := 23;

trtm_main_table[27].sol[29][1]  := 11;
trtm_main_table[27].sol[29][2]  := 32;
trtm_main_table[27].sol[29][3]  := 1 ;
trtm_main_table[27].sol[29][4]  := 0 ;

trtm_main_table[27].sol[30][1]  := 27;
trtm_main_table[27].sol[30][2]  := 35;
trtm_main_table[27].sol[30][3]  := 2 ;
trtm_main_table[27].sol[30][4]  := 40;

trtm_main_table[27].sol[31][1]  := 35;
trtm_main_table[27].sol[31][2]  := 2 ;
trtm_main_table[27].sol[31][3]  := 40;
trtm_main_table[27].sol[31][4]  := 26;

trtm_main_table[27].sol[32][1]  := 0 ;
trtm_main_table[27].sol[32][2]  := 0 ;
trtm_main_table[27].sol[32][3]  := 0 ;
trtm_main_table[27].sol[32][4]  := 0 ;

trtm_main_table[27].sol[33][1]  := 27;
trtm_main_table[27].sol[33][2]  := 17;
trtm_main_table[27].sol[33][3]  := 40;
trtm_main_table[27].sol[33][4]  := 0 ;

trtm_main_table[27].sol[34][1]  := 1 ;
trtm_main_table[27].sol[34][2]  := 11;
trtm_main_table[27].sol[34][3]  := 0 ;
trtm_main_table[27].sol[34][4]  := 0 ;

trtm_main_table[27].sol[35][1]  := 13;
trtm_main_table[27].sol[35][2]  := 35;
trtm_main_table[27].sol[35][3]  := 8 ;
trtm_main_table[27].sol[35][4]  := 24;

trtm_main_table[27].sol[36][1]  := 13;
trtm_main_table[27].sol[36][2]  := 35;
trtm_main_table[27].sol[36][3]  := 1 ;
trtm_main_table[27].sol[36][4]  := 0 ;

trtm_main_table[27].sol[37][1]  := 27;
trtm_main_table[27].sol[37][2]  := 40;
trtm_main_table[27].sol[37][3]  := 28;
trtm_main_table[27].sol[37][4]  := 0 ;

trtm_main_table[27].sol[38][1]  := 11;
trtm_main_table[27].sol[38][2]  := 13;
trtm_main_table[27].sol[38][3]  := 27;
trtm_main_table[27].sol[38][4]  := 0 ;

trtm_main_table[27].sol[39][1]  := 1 ;
trtm_main_table[27].sol[39][2]  := 35;
trtm_main_table[27].sol[39][3]  := 29;
trtm_main_table[27].sol[39][4]  := 38;

trtm_main_table[28].id         := 28;
trtm_main_table[28].desc       := 'Точность измерения';


trtm_main_table[28].sol[1][1]  := 32;
trtm_main_table[28].sol[1][2]  := 35;
trtm_main_table[28].sol[1][3]  := 26;
trtm_main_table[28].sol[1][4]  := 28;

trtm_main_table[28].sol[2][1]  := 28;
trtm_main_table[28].sol[2][2]  := 35;
trtm_main_table[28].sol[2][3]  := 25;
trtm_main_table[28].sol[2][4]  := 26;

trtm_main_table[28].sol[3][1]  := 28;
trtm_main_table[28].sol[3][2]  := 26;
trtm_main_table[28].sol[3][3]  := 5 ;
trtm_main_table[28].sol[3][4]  := 16;

trtm_main_table[28].sol[4][1]  := 32;
trtm_main_table[28].sol[4][2]  := 28;
trtm_main_table[28].sol[4][3]  := 3 ;
trtm_main_table[28].sol[4][4]  := 16;

trtm_main_table[28].sol[5][1]  := 26;
trtm_main_table[28].sol[5][2]  := 28;
trtm_main_table[28].sol[5][3]  := 32;
trtm_main_table[28].sol[5][4]  := 3 ;

trtm_main_table[28].sol[6][1]  := 26;
trtm_main_table[28].sol[6][2]  := 28;
trtm_main_table[28].sol[6][3]  := 32;
trtm_main_table[28].sol[6][4]  := 3 ;

trtm_main_table[28].sol[7][1]  := 32;
trtm_main_table[28].sol[7][2]  := 13;
trtm_main_table[28].sol[7][3]  := 6 ;
trtm_main_table[28].sol[7][4]  := 0 ;

trtm_main_table[28].sol[8][1]  := 0 ;
trtm_main_table[28].sol[8][2]  := 0 ;
trtm_main_table[28].sol[8][3]  := 0 ;
trtm_main_table[28].sol[8][4]  := 0 ;

trtm_main_table[28].sol[9][1]  := 28;
trtm_main_table[28].sol[9][2]  := 13;
trtm_main_table[28].sol[9][3]  := 32;
trtm_main_table[28].sol[9][4]  := 24;

trtm_main_table[28].sol[10][1]  := 32;
trtm_main_table[28].sol[10][2]  := 2 ;
trtm_main_table[28].sol[10][3]  := 0 ;
trtm_main_table[28].sol[10][4]  := 0 ;

trtm_main_table[28].sol[11][1]  := 6 ;
trtm_main_table[28].sol[11][2]  := 28;
trtm_main_table[28].sol[11][3]  := 32;
trtm_main_table[28].sol[11][4]  := 0 ;

trtm_main_table[28].sol[12][1]  := 6 ;
trtm_main_table[28].sol[12][2]  := 28;
trtm_main_table[28].sol[12][3]  := 32;
trtm_main_table[28].sol[12][4]  := 0 ;

trtm_main_table[28].sol[13][1]  := 32;
trtm_main_table[28].sol[13][2]  := 35;
trtm_main_table[28].sol[13][3]  := 13;
trtm_main_table[28].sol[13][4]  := 0 ;

trtm_main_table[28].sol[14][1]  := 28;
trtm_main_table[28].sol[14][2]  := 6 ;
trtm_main_table[28].sol[14][3]  := 32;
trtm_main_table[28].sol[14][4]  := 0 ;

trtm_main_table[28].sol[15][1]  := 28;
trtm_main_table[28].sol[15][2]  := 6 ;
trtm_main_table[28].sol[15][3]  := 32;
trtm_main_table[28].sol[15][4]  := 0 ;

trtm_main_table[28].sol[16][1]  := 10;
trtm_main_table[28].sol[16][2]  := 26;
trtm_main_table[28].sol[16][3]  := 24;
trtm_main_table[28].sol[16][4]  := 0 ;

trtm_main_table[28].sol[17][1]  := 6 ;
trtm_main_table[28].sol[17][2]  := 19;
trtm_main_table[28].sol[17][3]  := 28;
trtm_main_table[28].sol[17][4]  := 24;

trtm_main_table[28].sol[18][1]  := 6 ;
trtm_main_table[28].sol[18][2]  := 1 ;
trtm_main_table[28].sol[18][3]  := 32;
trtm_main_table[28].sol[18][4]  := 0 ;

trtm_main_table[28].sol[19][1]  := 3 ;
trtm_main_table[28].sol[19][2]  := 6 ;
trtm_main_table[28].sol[19][3]  := 32;
trtm_main_table[28].sol[19][4]  := 0 ;

trtm_main_table[28].sol[20][1]  := 0 ;
trtm_main_table[28].sol[20][2]  := 0 ;
trtm_main_table[28].sol[20][3]  := 0 ;
trtm_main_table[28].sol[20][4]  := 0 ;

trtm_main_table[28].sol[21][1]  := 3 ;
trtm_main_table[28].sol[21][2]  := 6 ;
trtm_main_table[28].sol[21][3]  := 32;
trtm_main_table[28].sol[21][4]  := 0 ;

trtm_main_table[28].sol[22][1]  := 26;
trtm_main_table[28].sol[22][2]  := 32;
trtm_main_table[28].sol[22][3]  := 27;
trtm_main_table[28].sol[22][4]  := 0 ;

trtm_main_table[28].sol[23][1]  := 10;
trtm_main_table[28].sol[23][2]  := 16;
trtm_main_table[28].sol[23][3]  := 31;
trtm_main_table[28].sol[23][4]  := 28;

trtm_main_table[28].sol[24][1]  := 0 ;
trtm_main_table[28].sol[24][2]  := 0 ;
trtm_main_table[28].sol[24][3]  := 0 ;
trtm_main_table[28].sol[24][4]  := 0 ;

trtm_main_table[28].sol[25][1]  := 24;
trtm_main_table[28].sol[25][2]  := 34;
trtm_main_table[28].sol[25][3]  := 28;
trtm_main_table[28].sol[25][4]  := 32;

trtm_main_table[28].sol[26][1]  := 2 ;
trtm_main_table[28].sol[26][2]  := 6 ;
trtm_main_table[28].sol[26][3]  := 32;
trtm_main_table[28].sol[26][4]  := 0 ;

trtm_main_table[28].sol[27][1]  := 5 ;
trtm_main_table[28].sol[27][2]  := 11;
trtm_main_table[28].sol[27][3]  := 1 ;
trtm_main_table[28].sol[27][4]  := 23;

trtm_main_table[28].sol[28][1]  := 0 ;
trtm_main_table[28].sol[28][2]  := 0 ;
trtm_main_table[28].sol[28][3]  := 0 ;
trtm_main_table[28].sol[28][4]  := 0 ;

trtm_main_table[28].sol[29][1]  := 0 ;
trtm_main_table[28].sol[29][2]  := 0 ;
trtm_main_table[28].sol[29][3]  := 0 ;
trtm_main_table[28].sol[29][4]  := 0 ;

trtm_main_table[28].sol[30][1]  := 28;
trtm_main_table[28].sol[30][2]  := 24;
trtm_main_table[28].sol[30][3]  := 22;
trtm_main_table[28].sol[30][4]  := 26;

trtm_main_table[28].sol[31][1]  := 3 ;
trtm_main_table[28].sol[31][2]  := 33;
trtm_main_table[28].sol[31][3]  := 39;
trtm_main_table[28].sol[31][4]  := 10;

trtm_main_table[28].sol[32][1]  := 6 ;
trtm_main_table[28].sol[32][2]  := 35;
trtm_main_table[28].sol[32][3]  := 25;
trtm_main_table[28].sol[32][4]  := 18;

trtm_main_table[28].sol[33][1]  := 1 ;
trtm_main_table[28].sol[33][2]  := 13;
trtm_main_table[28].sol[33][3]  := 17;
trtm_main_table[28].sol[33][4]  := 34;

trtm_main_table[28].sol[34][1]  := 1 ;
trtm_main_table[28].sol[34][2]  := 32;
trtm_main_table[28].sol[34][3]  := 13;
trtm_main_table[28].sol[34][4]  := 11;

trtm_main_table[28].sol[35][1]  := 13;
trtm_main_table[28].sol[35][2]  := 35;
trtm_main_table[28].sol[35][3]  := 2 ;
trtm_main_table[28].sol[35][4]  := 0 ;

trtm_main_table[28].sol[36][1]  := 27;
trtm_main_table[28].sol[36][2]  := 35;
trtm_main_table[28].sol[36][3]  := 10;
trtm_main_table[28].sol[36][4]  := 34;

trtm_main_table[28].sol[37][1]  := 26;
trtm_main_table[28].sol[37][2]  := 24;
trtm_main_table[28].sol[37][3]  := 32;
trtm_main_table[28].sol[37][4]  := 28;

trtm_main_table[28].sol[38][1]  := 28;
trtm_main_table[28].sol[38][2]  := 2 ;
trtm_main_table[28].sol[38][3]  := 10;
trtm_main_table[28].sol[38][4]  := 34;

trtm_main_table[28].sol[39][1]  := 10;
trtm_main_table[28].sol[39][2]  := 34;
trtm_main_table[28].sol[39][3]  := 28;
trtm_main_table[28].sol[39][4]  := 32;

trtm_main_table[29].id         := 29;
trtm_main_table[29].desc       := 'Точность изготовления';


trtm_main_table[29].sol[1][1]  := 28;
trtm_main_table[29].sol[1][2]  := 32;
trtm_main_table[29].sol[1][3]  := 13;
trtm_main_table[29].sol[1][4]  := 18;

trtm_main_table[29].sol[2][1]  := 28;
trtm_main_table[29].sol[2][2]  := 35;
trtm_main_table[29].sol[2][3]  := 27;
trtm_main_table[29].sol[2][4]  := 9 ;

trtm_main_table[29].sol[3][1]  := 10;
trtm_main_table[29].sol[3][2]  := 28;
trtm_main_table[29].sol[3][3]  := 29;
trtm_main_table[29].sol[3][4]  := 37;

trtm_main_table[29].sol[4][1]  := 2 ;
trtm_main_table[29].sol[4][2]  := 32;
trtm_main_table[29].sol[4][3]  := 10;
trtm_main_table[29].sol[4][4]  := 0 ;

trtm_main_table[29].sol[5][1]  := 28;
trtm_main_table[29].sol[5][2]  := 33;
trtm_main_table[29].sol[5][3]  := 29;
trtm_main_table[29].sol[5][4]  := 32;

trtm_main_table[29].sol[6][1]  := 2 ;
trtm_main_table[29].sol[6][2]  := 29;
trtm_main_table[29].sol[6][3]  := 18;
trtm_main_table[29].sol[6][4]  := 36;

trtm_main_table[29].sol[7][1]  := 32;
trtm_main_table[29].sol[7][2]  := 28;
trtm_main_table[29].sol[7][3]  := 2 ;
trtm_main_table[29].sol[7][4]  := 0 ;

trtm_main_table[29].sol[8][1]  := 25;
trtm_main_table[29].sol[8][2]  := 10;
trtm_main_table[29].sol[8][3]  := 35;
trtm_main_table[29].sol[8][4]  := 0 ;

trtm_main_table[29].sol[9][1]  := 10;
trtm_main_table[29].sol[9][2]  := 28;
trtm_main_table[29].sol[9][3]  := 32;
trtm_main_table[29].sol[9][4]  := 0 ;

trtm_main_table[29].sol[10][1]  := 28;
trtm_main_table[29].sol[10][2]  := 19;
trtm_main_table[29].sol[10][3]  := 34;
trtm_main_table[29].sol[10][4]  := 36;

trtm_main_table[29].sol[11][1]  := 3 ;
trtm_main_table[29].sol[11][2]  := 35;
trtm_main_table[29].sol[11][3]  := 0 ;
trtm_main_table[29].sol[11][4]  := 0 ;

trtm_main_table[29].sol[12][1]  := 32;
trtm_main_table[29].sol[12][2]  := 30;
trtm_main_table[29].sol[12][3]  := 40;
trtm_main_table[29].sol[12][4]  := 0 ;

trtm_main_table[29].sol[13][1]  := 30;
trtm_main_table[29].sol[13][2]  := 18;
trtm_main_table[29].sol[13][3]  := 0 ;
trtm_main_table[29].sol[13][4]  := 0 ;

trtm_main_table[29].sol[14][1]  := 3 ;
trtm_main_table[29].sol[14][2]  := 27;
trtm_main_table[29].sol[14][3]  := 0 ;
trtm_main_table[29].sol[14][4]  := 0 ;

trtm_main_table[29].sol[15][1]  := 3 ;
trtm_main_table[29].sol[15][2]  := 27;
trtm_main_table[29].sol[15][3]  := 40;
trtm_main_table[29].sol[15][4]  := 0 ;

trtm_main_table[29].sol[16][1]  := 0 ;
trtm_main_table[29].sol[16][2]  := 0 ;
trtm_main_table[29].sol[16][3]  := 0 ;
trtm_main_table[29].sol[16][4]  := 0 ;

trtm_main_table[29].sol[17][1]  := 19;
trtm_main_table[29].sol[17][2]  := 26;
trtm_main_table[29].sol[17][3]  := 0 ;
trtm_main_table[29].sol[17][4]  := 0 ;

trtm_main_table[29].sol[18][1]  := 3 ;
trtm_main_table[29].sol[18][2]  := 32;
trtm_main_table[29].sol[18][3]  := 0 ;
trtm_main_table[29].sol[18][4]  := 0 ;

trtm_main_table[29].sol[19][1]  := 32;
trtm_main_table[29].sol[19][2]  := 2 ;
trtm_main_table[29].sol[19][3]  := 0 ;
trtm_main_table[29].sol[19][4]  := 0 ;

trtm_main_table[29].sol[20][1]  := 0 ;
trtm_main_table[29].sol[20][2]  := 0 ;
trtm_main_table[29].sol[20][3]  := 0 ;
trtm_main_table[29].sol[20][4]  := 0 ;

trtm_main_table[29].sol[21][1]  := 32;
trtm_main_table[29].sol[21][2]  := 2 ;
trtm_main_table[29].sol[21][3]  := 0 ;
trtm_main_table[29].sol[21][4]  := 0 ;

trtm_main_table[29].sol[22][1]  := 13;
trtm_main_table[29].sol[22][2]  := 32;
trtm_main_table[29].sol[22][3]  := 2 ;
trtm_main_table[29].sol[22][4]  := 0 ;

trtm_main_table[29].sol[23][1]  := 35;
trtm_main_table[29].sol[23][2]  := 31;
trtm_main_table[29].sol[23][3]  := 10;
trtm_main_table[29].sol[23][4]  := 24;

trtm_main_table[29].sol[24][1]  := 0 ;
trtm_main_table[29].sol[24][2]  := 0 ;
trtm_main_table[29].sol[24][3]  := 0 ;
trtm_main_table[29].sol[24][4]  := 0 ;

trtm_main_table[29].sol[25][1]  := 32;
trtm_main_table[29].sol[25][2]  := 26;
trtm_main_table[29].sol[25][3]  := 28;
trtm_main_table[29].sol[25][4]  := 18;

trtm_main_table[29].sol[26][1]  := 32;
trtm_main_table[29].sol[26][2]  := 30;
trtm_main_table[29].sol[26][3]  := 0 ;
trtm_main_table[29].sol[26][4]  := 0 ;

trtm_main_table[29].sol[27][1]  := 11;
trtm_main_table[29].sol[27][2]  := 32;
trtm_main_table[29].sol[27][3]  := 1 ;
trtm_main_table[29].sol[27][4]  := 0 ;

trtm_main_table[29].sol[28][1]  := 0 ;
trtm_main_table[29].sol[28][2]  := 0 ;
trtm_main_table[29].sol[28][3]  := 0 ;
trtm_main_table[29].sol[28][4]  := 0 ;

trtm_main_table[29].sol[29][1]  := 0 ;
trtm_main_table[29].sol[29][2]  := 0 ;
trtm_main_table[29].sol[29][3]  := 0 ;
trtm_main_table[29].sol[29][4]  := 0 ;

trtm_main_table[29].sol[30][1]  := 26;
trtm_main_table[29].sol[30][2]  := 28;
trtm_main_table[29].sol[30][3]  := 10;
trtm_main_table[29].sol[30][4]  := 36;

trtm_main_table[29].sol[31][1]  := 4 ;
trtm_main_table[29].sol[31][2]  := 17;
trtm_main_table[29].sol[31][3]  := 34;
trtm_main_table[29].sol[31][4]  := 26;

trtm_main_table[29].sol[32][1]  := 0 ;
trtm_main_table[29].sol[32][2]  := 0 ;
trtm_main_table[29].sol[32][3]  := 0 ;
trtm_main_table[29].sol[32][4]  := 0 ;

trtm_main_table[29].sol[33][1]  := 1 ;
trtm_main_table[29].sol[33][2]  := 32;
trtm_main_table[29].sol[33][3]  := 35;
trtm_main_table[29].sol[33][4]  := 23;

trtm_main_table[29].sol[34][1]  := 25;
trtm_main_table[29].sol[34][2]  := 10;
trtm_main_table[29].sol[34][3]  := 0 ;
trtm_main_table[29].sol[34][4]  := 0 ;

trtm_main_table[29].sol[35][1]  := 0 ;
trtm_main_table[29].sol[35][2]  := 0 ;
trtm_main_table[29].sol[35][3]  := 0 ;
trtm_main_table[29].sol[35][4]  := 0 ;

trtm_main_table[29].sol[36][1]  := 26;
trtm_main_table[29].sol[36][2]  := 2 ;
trtm_main_table[29].sol[36][3]  := 18;
trtm_main_table[29].sol[36][4]  := 0 ;

trtm_main_table[29].sol[37][1]  := 0 ;
trtm_main_table[29].sol[37][2]  := 0 ;
trtm_main_table[29].sol[37][3]  := 0 ;
trtm_main_table[29].sol[37][4]  := 0 ;

trtm_main_table[29].sol[38][1]  := 26;
trtm_main_table[29].sol[38][2]  := 28;
trtm_main_table[29].sol[38][3]  := 18;
trtm_main_table[29].sol[38][4]  := 23;

trtm_main_table[29].sol[39][1]  := 10;
trtm_main_table[29].sol[39][2]  := 18;
trtm_main_table[29].sol[39][3]  := 32;
trtm_main_table[29].sol[39][4]  := 39;

trtm_main_table[30].id         := 30 ;
trtm_main_table[30].desc       := 'Вредные факторы, действующие на объект';


trtm_main_table[30].sol[1][1]  := 22;
trtm_main_table[30].sol[1][2]  := 21;
trtm_main_table[30].sol[1][3]  := 27;
trtm_main_table[30].sol[1][4]  := 39;

trtm_main_table[30].sol[2][1]  := 2 ;
trtm_main_table[30].sol[2][2]  := 22;
trtm_main_table[30].sol[2][3]  := 13;
trtm_main_table[30].sol[2][4]  := 24;

trtm_main_table[30].sol[3][1]  := 17;
trtm_main_table[30].sol[3][2]  := 1 ;
trtm_main_table[30].sol[3][3]  := 39;
trtm_main_table[30].sol[3][4]  := 4 ;

trtm_main_table[30].sol[4][1]  := 1 ;
trtm_main_table[30].sol[4][2]  := 18;
trtm_main_table[30].sol[4][3]  := 0 ;
trtm_main_table[30].sol[4][4]  := 0 ;

trtm_main_table[30].sol[5][1]  := 22;
trtm_main_table[30].sol[5][2]  := 1 ;
trtm_main_table[30].sol[5][3]  := 33;
trtm_main_table[30].sol[5][4]  := 28;

trtm_main_table[30].sol[6][1]  := 27;
trtm_main_table[30].sol[6][2]  := 2 ;
trtm_main_table[30].sol[6][3]  := 39;
trtm_main_table[30].sol[6][4]  := 35;

trtm_main_table[30].sol[7][1]  := 22;
trtm_main_table[30].sol[7][2]  := 23;
trtm_main_table[30].sol[7][3]  := 37;
trtm_main_table[30].sol[7][4]  := 35;

trtm_main_table[30].sol[8][1]  := 34;
trtm_main_table[30].sol[8][2]  := 39;
trtm_main_table[30].sol[8][3]  := 19;
trtm_main_table[30].sol[8][4]  := 27;

trtm_main_table[30].sol[9][1]  := 21;
trtm_main_table[30].sol[9][2]  := 22;
trtm_main_table[30].sol[9][3]  := 35;
trtm_main_table[30].sol[9][4]  := 28;

trtm_main_table[30].sol[10][1]  := 13;
trtm_main_table[30].sol[10][2]  := 35;
trtm_main_table[30].sol[10][3]  := 39;
trtm_main_table[30].sol[10][4]  := 18;

trtm_main_table[30].sol[11][1]  := 22;
trtm_main_table[30].sol[11][2]  := 2 ;
trtm_main_table[30].sol[11][3]  := 37;
trtm_main_table[30].sol[11][4]  := 0 ;

trtm_main_table[30].sol[12][1]  := 22;
trtm_main_table[30].sol[12][2]  := 1 ;
trtm_main_table[30].sol[12][3]  := 3 ;
trtm_main_table[30].sol[12][4]  := 35;

trtm_main_table[30].sol[13][1]  := 35;
trtm_main_table[30].sol[13][2]  := 24;
trtm_main_table[30].sol[13][3]  := 30;
trtm_main_table[30].sol[13][4]  := 18;

trtm_main_table[30].sol[14][1]  := 18;
trtm_main_table[30].sol[14][2]  := 35;
trtm_main_table[30].sol[14][3]  := 37;
trtm_main_table[30].sol[14][4]  := 1 ;

trtm_main_table[30].sol[15][1]  := 22;
trtm_main_table[30].sol[15][2]  := 15;
trtm_main_table[30].sol[15][3]  := 33;
trtm_main_table[30].sol[15][4]  := 28;

trtm_main_table[30].sol[16][1]  := 17;
trtm_main_table[30].sol[16][2]  := 1 ;
trtm_main_table[30].sol[16][3]  := 40;
trtm_main_table[30].sol[16][4]  := 33;

trtm_main_table[30].sol[17][1]  := 22;
trtm_main_table[30].sol[17][2]  := 33;
trtm_main_table[30].sol[17][3]  := 35;
trtm_main_table[30].sol[17][4]  := 2 ;

trtm_main_table[30].sol[18][1]  := 1 ;
trtm_main_table[30].sol[18][2]  := 19;
trtm_main_table[30].sol[18][3]  := 32;
trtm_main_table[30].sol[18][4]  := 13;

trtm_main_table[30].sol[19][1]  := 1 ;
trtm_main_table[30].sol[19][2]  := 24;
trtm_main_table[30].sol[19][3]  := 6 ;
trtm_main_table[30].sol[19][4]  := 27;

trtm_main_table[30].sol[20][1]  := 10;
trtm_main_table[30].sol[20][2]  := 2 ;
trtm_main_table[30].sol[20][3]  := 22;
trtm_main_table[30].sol[20][4]  := 37;

trtm_main_table[30].sol[21][1]  := 19;
trtm_main_table[30].sol[21][2]  := 22;
trtm_main_table[30].sol[21][3]  := 31;
trtm_main_table[30].sol[21][4]  := 2 ;

trtm_main_table[30].sol[22][1]  := 21;
trtm_main_table[30].sol[22][2]  := 22;
trtm_main_table[30].sol[22][3]  := 35;
trtm_main_table[30].sol[22][4]  := 2 ;

trtm_main_table[30].sol[23][1]  := 33;
trtm_main_table[30].sol[23][2]  := 22;
trtm_main_table[30].sol[23][3]  := 19;
trtm_main_table[30].sol[23][4]  := 40;

trtm_main_table[30].sol[24][1]  := 22;
trtm_main_table[30].sol[24][2]  := 10;
trtm_main_table[30].sol[24][3]  := 2 ;
trtm_main_table[30].sol[24][4]  := 0 ;

trtm_main_table[30].sol[25][1]  := 35;
trtm_main_table[30].sol[25][2]  := 18;
trtm_main_table[30].sol[25][3]  := 34;
trtm_main_table[30].sol[25][4]  := 0 ;

trtm_main_table[30].sol[26][1]  := 35;
trtm_main_table[30].sol[26][2]  := 33;
trtm_main_table[30].sol[26][3]  := 29;
trtm_main_table[30].sol[26][4]  := 31;

trtm_main_table[30].sol[27][1]  := 27;
trtm_main_table[30].sol[27][2]  := 24;
trtm_main_table[30].sol[27][3]  := 2 ;
trtm_main_table[30].sol[27][4]  := 40;

trtm_main_table[30].sol[28][1]  := 28;
trtm_main_table[30].sol[28][2]  := 33;
trtm_main_table[30].sol[28][3]  := 23;
trtm_main_table[30].sol[28][4]  := 26;

trtm_main_table[30].sol[29][1]  := 26;
trtm_main_table[30].sol[29][2]  := 28;
trtm_main_table[30].sol[29][3]  := 10;
trtm_main_table[30].sol[29][4]  := 18;

trtm_main_table[30].sol[30][1]  := 0 ;
trtm_main_table[30].sol[30][2]  := 0 ;
trtm_main_table[30].sol[30][3]  := 0 ;
trtm_main_table[30].sol[30][4]  := 0 ;

trtm_main_table[30].sol[31][1]  := 0 ;
trtm_main_table[30].sol[31][2]  := 0 ;
trtm_main_table[30].sol[31][3]  := 0 ;
trtm_main_table[30].sol[31][4]  := 0 ;

trtm_main_table[30].sol[32][1]  := 24;
trtm_main_table[30].sol[32][2]  := 35;
trtm_main_table[30].sol[32][3]  := 2 ;
trtm_main_table[30].sol[32][4]  := 0 ;

trtm_main_table[30].sol[33][1]  := 2 ;
trtm_main_table[30].sol[33][2]  := 25;
trtm_main_table[30].sol[33][3]  := 28;
trtm_main_table[30].sol[33][4]  := 39;

trtm_main_table[30].sol[34][1]  := 35;
trtm_main_table[30].sol[34][2]  := 10;
trtm_main_table[30].sol[34][3]  := 2 ;
trtm_main_table[30].sol[34][4]  := 0 ;

trtm_main_table[30].sol[35][1]  := 35;
trtm_main_table[30].sol[35][2]  := 11;
trtm_main_table[30].sol[35][3]  := 22;
trtm_main_table[30].sol[35][4]  := 31;

trtm_main_table[30].sol[36][1]  := 22;
trtm_main_table[30].sol[36][2]  := 19;
trtm_main_table[30].sol[36][3]  := 29;
trtm_main_table[30].sol[36][4]  := 40;

trtm_main_table[30].sol[37][1]  := 22;
trtm_main_table[30].sol[37][2]  := 19;
trtm_main_table[30].sol[37][3]  := 29;
trtm_main_table[30].sol[37][4]  := 40;

trtm_main_table[30].sol[38][1]  := 33;
trtm_main_table[30].sol[38][2]  := 3 ;
trtm_main_table[30].sol[38][3]  := 34;
trtm_main_table[30].sol[38][4]  := 0 ;

trtm_main_table[30].sol[39][1]  := 22;
trtm_main_table[30].sol[39][2]  := 35;
trtm_main_table[30].sol[39][3]  := 13;
trtm_main_table[30].sol[39][4]  := 24;

trtm_main_table[31].id         := 31;
trtm_main_table[31].desc       := 'Вредные факторы самого объекта';


trtm_main_table[31].sol[1][1]  := 19;
trtm_main_table[31].sol[1][2]  := 22;
trtm_main_table[31].sol[1][3]  := 15;
trtm_main_table[31].sol[1][4]  := 39;

trtm_main_table[31].sol[2][1]  := 35;
trtm_main_table[31].sol[2][2]  := 22;
trtm_main_table[31].sol[2][3]  := 1 ;
trtm_main_table[31].sol[2][4]  := 39;

trtm_main_table[31].sol[3][1]  := 17;
trtm_main_table[31].sol[3][2]  := 15;
trtm_main_table[31].sol[3][3]  := 16;
trtm_main_table[31].sol[3][4]  := 22;

trtm_main_table[31].sol[4][1]  := 0 ;
trtm_main_table[31].sol[4][2]  := 0 ;
trtm_main_table[31].sol[4][3]  := 0 ;
trtm_main_table[31].sol[4][4]  := 0 ;

trtm_main_table[31].sol[5][1]  := 17;
trtm_main_table[31].sol[5][2]  := 2 ;
trtm_main_table[31].sol[5][3]  := 18;
trtm_main_table[31].sol[5][4]  := 39;

trtm_main_table[31].sol[6][1]  := 22;
trtm_main_table[31].sol[6][2]  := 1 ;
trtm_main_table[31].sol[6][3]  := 40;
trtm_main_table[31].sol[6][4]  := 0 ;

trtm_main_table[31].sol[7][1]  := 17;
trtm_main_table[31].sol[7][2]  := 2 ;
trtm_main_table[31].sol[7][3]  := 40;
trtm_main_table[31].sol[7][4]  := 0 ;

trtm_main_table[31].sol[8][1]  := 30;
trtm_main_table[31].sol[8][2]  := 18;
trtm_main_table[31].sol[8][3]  := 35;
trtm_main_table[31].sol[8][4]  := 4 ;

trtm_main_table[31].sol[9][1]  := 35;
trtm_main_table[31].sol[9][2]  := 28;
trtm_main_table[31].sol[9][3]  := 3 ;
trtm_main_table[31].sol[9][4]  := 23;

trtm_main_table[31].sol[10][1]  := 35;
trtm_main_table[31].sol[10][2]  := 28;
trtm_main_table[31].sol[10][3]  := 1 ;
trtm_main_table[31].sol[10][4]  := 40;

trtm_main_table[31].sol[11][1]  := 2 ;
trtm_main_table[31].sol[11][2]  := 33;
trtm_main_table[31].sol[11][3]  := 27;
trtm_main_table[31].sol[11][4]  := 18;

trtm_main_table[31].sol[12][1]  := 35;
trtm_main_table[31].sol[12][2]  := 1 ;
trtm_main_table[31].sol[12][3]  := 0 ;
trtm_main_table[31].sol[12][4]  := 0 ;

trtm_main_table[31].sol[13][1]  := 35;
trtm_main_table[31].sol[13][2]  := 40;
trtm_main_table[31].sol[13][3]  := 27;
trtm_main_table[31].sol[13][4]  := 39;

trtm_main_table[31].sol[14][1]  := 15;
trtm_main_table[31].sol[14][2]  := 35;
trtm_main_table[31].sol[14][3]  := 22;
trtm_main_table[31].sol[14][4]  := 2 ;

trtm_main_table[31].sol[15][1]  := 15;
trtm_main_table[31].sol[15][2]  := 22;
trtm_main_table[31].sol[15][3]  := 33;
trtm_main_table[31].sol[15][4]  := 11;

trtm_main_table[31].sol[16][1]  := 21;
trtm_main_table[31].sol[16][2]  := 39;
trtm_main_table[31].sol[16][3]  := 16;
trtm_main_table[31].sol[16][4]  := 22;

trtm_main_table[31].sol[17][1]  := 22;
trtm_main_table[31].sol[17][2]  := 35;
trtm_main_table[31].sol[17][3]  := 2 ;
trtm_main_table[31].sol[17][4]  := 24;

trtm_main_table[31].sol[18][1]  := 19;
trtm_main_table[31].sol[18][2]  := 24;
trtm_main_table[31].sol[18][3]  := 39;
trtm_main_table[31].sol[18][4]  := 32;

trtm_main_table[31].sol[19][1]  := 2 ;
trtm_main_table[31].sol[19][2]  := 35;
trtm_main_table[31].sol[19][3]  := 6 ;
trtm_main_table[31].sol[19][4]  := 0 ;

trtm_main_table[31].sol[20][1]  := 19;
trtm_main_table[31].sol[20][2]  := 22;
trtm_main_table[31].sol[20][3]  := 18;
trtm_main_table[31].sol[20][4]  := 0 ;

trtm_main_table[31].sol[21][1]  := 2 ;
trtm_main_table[31].sol[21][2]  := 35;
trtm_main_table[31].sol[21][3]  := 18;
trtm_main_table[31].sol[21][4]  := 0 ;

trtm_main_table[31].sol[22][1]  := 21;
trtm_main_table[31].sol[22][2]  := 35;
trtm_main_table[31].sol[22][3]  := 2 ;
trtm_main_table[31].sol[22][4]  := 22;

trtm_main_table[31].sol[23][1]  := 10;
trtm_main_table[31].sol[23][2]  := 1 ;
trtm_main_table[31].sol[23][3]  := 34;
trtm_main_table[31].sol[23][4]  := 0 ;

trtm_main_table[31].sol[24][1]  := 10;
trtm_main_table[31].sol[24][2]  := 21;
trtm_main_table[31].sol[24][3]  := 29;
trtm_main_table[31].sol[24][4]  := 0 ;

trtm_main_table[31].sol[25][1]  := 1 ;
trtm_main_table[31].sol[25][2]  := 22;
trtm_main_table[31].sol[25][3]  := 0 ;
trtm_main_table[31].sol[25][4]  := 0 ;

trtm_main_table[31].sol[26][1]  := 3 ;
trtm_main_table[31].sol[26][2]  := 24;
trtm_main_table[31].sol[26][3]  := 39;
trtm_main_table[31].sol[26][4]  := 1 ;

trtm_main_table[31].sol[27][1]  := 24;
trtm_main_table[31].sol[27][2]  := 2 ;
trtm_main_table[31].sol[27][3]  := 40;
trtm_main_table[31].sol[27][4]  := 39;

trtm_main_table[31].sol[28][1]  := 3 ;
trtm_main_table[31].sol[28][2]  := 33;
trtm_main_table[31].sol[28][3]  := 26;
trtm_main_table[31].sol[28][4]  := 0 ;

trtm_main_table[31].sol[29][1]  := 4 ;
trtm_main_table[31].sol[29][2]  := 17;
trtm_main_table[31].sol[29][3]  := 34;
trtm_main_table[31].sol[29][4]  := 26;

trtm_main_table[31].sol[30][1]  := 0 ;
trtm_main_table[31].sol[30][2]  := 0 ;
trtm_main_table[31].sol[30][3]  := 0 ;
trtm_main_table[31].sol[30][4]  := 0 ;

trtm_main_table[31].sol[31][1]  := 0 ;
trtm_main_table[31].sol[31][2]  := 0 ;
trtm_main_table[31].sol[31][3]  := 0 ;
trtm_main_table[31].sol[31][4]  := 0 ;

trtm_main_table[31].sol[32][1]  := 0 ;
trtm_main_table[31].sol[32][2]  := 0 ;
trtm_main_table[31].sol[32][3]  := 0 ;
trtm_main_table[31].sol[32][4]  := 0 ;

trtm_main_table[31].sol[33][1]  := 0 ;
trtm_main_table[31].sol[33][2]  := 0 ;
trtm_main_table[31].sol[33][3]  := 0 ;
trtm_main_table[31].sol[33][4]  := 0 ;

trtm_main_table[31].sol[34][1]  := 0 ;
trtm_main_table[31].sol[34][2]  := 0 ;
trtm_main_table[31].sol[34][3]  := 0 ;
trtm_main_table[31].sol[34][4]  := 0 ;

trtm_main_table[31].sol[35][1]  := 0 ;
trtm_main_table[31].sol[35][2]  := 0 ;
trtm_main_table[31].sol[35][3]  := 0 ;
trtm_main_table[31].sol[35][4]  := 0 ;

trtm_main_table[31].sol[36][1]  := 19;
trtm_main_table[31].sol[36][2]  := 1 ;
trtm_main_table[31].sol[36][3]  := 31;
trtm_main_table[31].sol[36][4]  := 0 ;

trtm_main_table[31].sol[37][1]  := 2 ;
trtm_main_table[31].sol[37][2]  := 21;
trtm_main_table[31].sol[37][3]  := 27;
trtm_main_table[31].sol[37][4]  := 1 ;

trtm_main_table[31].sol[38][1]  := 2 ;
trtm_main_table[31].sol[38][2]  := 0 ;
trtm_main_table[31].sol[38][3]  := 0 ;
trtm_main_table[31].sol[38][4]  := 0 ;

trtm_main_table[31].sol[39][1]  := 22;
trtm_main_table[31].sol[39][2]  := 35;
trtm_main_table[31].sol[39][3]  := 18;
trtm_main_table[31].sol[39][4]  := 39;

trtm_main_table[32].id         := 32;
trtm_main_table[32].desc       := 'Удобство изготовления';


trtm_main_table[32].sol[1][1]  := 28;
trtm_main_table[32].sol[1][2]  := 29;
trtm_main_table[32].sol[1][3]  := 15;
trtm_main_table[32].sol[1][4]  := 16;

trtm_main_table[32].sol[2][1]  := 1 ;
trtm_main_table[32].sol[2][2]  := 27;
trtm_main_table[32].sol[2][3]  := 36;
trtm_main_table[32].sol[2][4]  := 13;

trtm_main_table[32].sol[3][1]  := 1 ;
trtm_main_table[32].sol[3][2]  := 29;
trtm_main_table[32].sol[3][3]  := 13;
trtm_main_table[32].sol[3][4]  := 17;

trtm_main_table[32].sol[4][1]  := 15;
trtm_main_table[32].sol[4][2]  := 17;
trtm_main_table[32].sol[4][3]  := 27;
trtm_main_table[32].sol[4][4]  := 0 ;

trtm_main_table[32].sol[5][1]  := 13;
trtm_main_table[32].sol[5][2]  := 1 ;
trtm_main_table[32].sol[5][3]  := 26;
trtm_main_table[32].sol[5][4]  := 12;

trtm_main_table[32].sol[6][1]  := 16;
trtm_main_table[32].sol[6][2]  := 40;
trtm_main_table[32].sol[6][3]  := 0 ;
trtm_main_table[32].sol[6][4]  := 0 ;

trtm_main_table[32].sol[7][1]  := 13;
trtm_main_table[32].sol[7][2]  := 29;
trtm_main_table[32].sol[7][3]  := 1 ;
trtm_main_table[32].sol[7][4]  := 40;

trtm_main_table[32].sol[8][1]  := 35;
trtm_main_table[32].sol[8][2]  := 0 ;
trtm_main_table[32].sol[8][3]  := 0 ;
trtm_main_table[32].sol[8][4]  := 0 ;

trtm_main_table[32].sol[9][1]  := 35;
trtm_main_table[32].sol[9][2]  := 13;
trtm_main_table[32].sol[9][3]  := 8 ;
trtm_main_table[32].sol[9][4]  := 1 ;

trtm_main_table[32].sol[10][1]  := 35;
trtm_main_table[32].sol[10][2]  := 12;
trtm_main_table[32].sol[10][3]  := 0 ;
trtm_main_table[32].sol[10][4]  := 0 ;

trtm_main_table[32].sol[11][1]  := 35;
trtm_main_table[32].sol[11][2]  := 19;
trtm_main_table[32].sol[11][3]  := 1 ;
trtm_main_table[32].sol[11][4]  := 37;

trtm_main_table[32].sol[12][1]  := 1 ;
trtm_main_table[32].sol[12][2]  := 28;
trtm_main_table[32].sol[12][3]  := 13;
trtm_main_table[32].sol[12][4]  := 27;

trtm_main_table[32].sol[13][1]  := 11;
trtm_main_table[32].sol[13][2]  := 13;
trtm_main_table[32].sol[13][3]  := 1 ;
trtm_main_table[32].sol[13][4]  := 0 ;

trtm_main_table[32].sol[14][1]  := 1 ;
trtm_main_table[32].sol[14][2]  := 3 ;
trtm_main_table[32].sol[14][3]  := 10;
trtm_main_table[32].sol[14][4]  := 32;

trtm_main_table[32].sol[15][1]  := 27;
trtm_main_table[32].sol[15][2]  := 1 ;
trtm_main_table[32].sol[15][3]  := 4 ;
trtm_main_table[32].sol[15][4]  := 0 ;

trtm_main_table[32].sol[16][1]  := 35;
trtm_main_table[32].sol[16][2]  := 16;
trtm_main_table[32].sol[16][3]  := 0 ;
trtm_main_table[32].sol[16][4]  := 0 ;

trtm_main_table[32].sol[17][1]  := 27;
trtm_main_table[32].sol[17][2]  := 26;
trtm_main_table[32].sol[17][3]  := 18;
trtm_main_table[32].sol[17][4]  := 0 ;

trtm_main_table[32].sol[18][1]  := 28;
trtm_main_table[32].sol[18][2]  := 24;
trtm_main_table[32].sol[18][3]  := 27;
trtm_main_table[32].sol[18][4]  := 1 ;

trtm_main_table[32].sol[19][1]  := 28;
trtm_main_table[32].sol[19][2]  := 26;
trtm_main_table[32].sol[19][3]  := 27;
trtm_main_table[32].sol[19][4]  := 1 ;

trtm_main_table[32].sol[20][1]  := 1 ;
trtm_main_table[32].sol[20][2]  := 4 ;
trtm_main_table[32].sol[20][3]  := 0 ;
trtm_main_table[32].sol[20][4]  := 0 ;

trtm_main_table[32].sol[21][1]  := 27;
trtm_main_table[32].sol[21][2]  := 1 ;
trtm_main_table[32].sol[21][3]  := 12;
trtm_main_table[32].sol[21][4]  := 24;

trtm_main_table[32].sol[22][1]  := 19;
trtm_main_table[32].sol[22][2]  := 35;
trtm_main_table[32].sol[22][3]  := 0 ;
trtm_main_table[32].sol[22][4]  := 0 ;

trtm_main_table[32].sol[23][1]  := 15;
trtm_main_table[32].sol[23][2]  := 34;
trtm_main_table[32].sol[23][3]  := 33;
trtm_main_table[32].sol[23][4]  := 0 ;

trtm_main_table[32].sol[24][1]  := 32;
trtm_main_table[32].sol[24][2]  := 24;
trtm_main_table[32].sol[24][3]  := 18;
trtm_main_table[32].sol[24][4]  := 16;

trtm_main_table[32].sol[25][1]  := 35;
trtm_main_table[32].sol[25][2]  := 28;
trtm_main_table[32].sol[25][3]  := 34;
trtm_main_table[32].sol[25][4]  := 4 ;

trtm_main_table[32].sol[26][1]  := 35;
trtm_main_table[32].sol[26][2]  := 23;
trtm_main_table[32].sol[26][3]  := 1 ;
trtm_main_table[32].sol[26][4]  := 24;

trtm_main_table[32].sol[27][1]  := 0 ;
trtm_main_table[32].sol[27][2]  := 0 ;
trtm_main_table[32].sol[27][3]  := 0 ;
trtm_main_table[32].sol[27][4]  := 0 ;

trtm_main_table[32].sol[28][1]  := 1 ;
trtm_main_table[32].sol[28][2]  := 35;
trtm_main_table[32].sol[28][3]  := 12;
trtm_main_table[32].sol[28][4]  := 18;

trtm_main_table[32].sol[29][1]  := 0 ;
trtm_main_table[32].sol[29][2]  := 0 ;
trtm_main_table[32].sol[29][3]  := 0 ;
trtm_main_table[32].sol[29][4]  := 0 ;

trtm_main_table[32].sol[30][1]  := 24;
trtm_main_table[32].sol[30][2]  := 2 ;
trtm_main_table[32].sol[30][3]  := 0 ;
trtm_main_table[32].sol[30][4]  := 0 ;

trtm_main_table[32].sol[31][1]  := 0 ;
trtm_main_table[32].sol[31][2]  := 0 ;
trtm_main_table[32].sol[31][3]  := 0 ;
trtm_main_table[32].sol[31][4]  := 0 ;

trtm_main_table[32].sol[32][1]  := 0 ;
trtm_main_table[32].sol[32][2]  := 0 ;
trtm_main_table[32].sol[32][3]  := 0 ;
trtm_main_table[32].sol[32][4]  := 0 ;

trtm_main_table[32].sol[33][1]  := 2 ;
trtm_main_table[32].sol[33][2]  := 5 ;
trtm_main_table[32].sol[33][3]  := 13;
trtm_main_table[32].sol[33][4]  := 16;

trtm_main_table[32].sol[34][1]  := 35;
trtm_main_table[32].sol[34][2]  := 1 ;
trtm_main_table[32].sol[34][3]  := 11;
trtm_main_table[32].sol[34][4]  := 9 ;

trtm_main_table[32].sol[35][1]  := 2 ;
trtm_main_table[32].sol[35][2]  := 13;
trtm_main_table[32].sol[35][3]  := 15;
trtm_main_table[32].sol[35][4]  := 0 ;

trtm_main_table[32].sol[36][1]  := 27;
trtm_main_table[32].sol[36][2]  := 26;
trtm_main_table[32].sol[36][3]  := 1 ;
trtm_main_table[32].sol[36][4]  := 0 ;

trtm_main_table[32].sol[37][1]  := 6 ;
trtm_main_table[32].sol[37][2]  := 28;
trtm_main_table[32].sol[37][3]  := 11;
trtm_main_table[32].sol[37][4]  := 1 ;

trtm_main_table[32].sol[38][1]  := 8 ;
trtm_main_table[32].sol[38][2]  := 28;
trtm_main_table[32].sol[38][3]  := 1 ;
trtm_main_table[32].sol[38][4]  := 0 ;

trtm_main_table[32].sol[39][1]  := 35;
trtm_main_table[32].sol[39][2]  := 1 ;
trtm_main_table[32].sol[39][3]  := 10;
trtm_main_table[32].sol[39][4]  := 28;

trtm_main_table[33].id         := 33;
trtm_main_table[33].desc       := 'Удобство эксплуатации';


trtm_main_table[33].sol[1][1]  := 25;
trtm_main_table[33].sol[1][2]  := 2 ;
trtm_main_table[33].sol[1][3]  := 13;
trtm_main_table[33].sol[1][4]  := 15;

trtm_main_table[33].sol[2][1]  := 6 ;
trtm_main_table[33].sol[2][2]  := 13;
trtm_main_table[33].sol[2][3]  := 1 ;
trtm_main_table[33].sol[2][4]  := 25;

trtm_main_table[33].sol[3][1]  := 1 ;
trtm_main_table[33].sol[3][2]  := 17;
trtm_main_table[33].sol[3][3]  := 13;
trtm_main_table[33].sol[3][4]  := 12;

trtm_main_table[33].sol[4][1]  := 0 ;
trtm_main_table[33].sol[4][2]  := 0 ;
trtm_main_table[33].sol[4][3]  := 0 ;
trtm_main_table[33].sol[4][4]  := 0 ;

trtm_main_table[33].sol[5][1]  := 1 ;
trtm_main_table[33].sol[5][2]  := 17;
trtm_main_table[33].sol[5][3]  := 13;
trtm_main_table[33].sol[5][4]  := 16;

trtm_main_table[33].sol[6][1]  := 18;
trtm_main_table[33].sol[6][2]  := 16;
trtm_main_table[33].sol[6][3]  := 15;
trtm_main_table[33].sol[6][4]  := 39;

trtm_main_table[33].sol[7][1]  := 1 ;
trtm_main_table[33].sol[7][2]  := 16;
trtm_main_table[33].sol[7][3]  := 35;
trtm_main_table[33].sol[7][4]  := 15;

trtm_main_table[33].sol[8][1]  := 4 ;
trtm_main_table[33].sol[8][2]  := 18;
trtm_main_table[33].sol[8][3]  := 39;
trtm_main_table[33].sol[8][4]  := 31;

trtm_main_table[33].sol[9][1]  := 18;
trtm_main_table[33].sol[9][2]  := 13;
trtm_main_table[33].sol[9][3]  := 34;
trtm_main_table[33].sol[9][4]  := 0 ;

trtm_main_table[33].sol[10][1]  := 28;
trtm_main_table[33].sol[10][2]  := 13;
trtm_main_table[33].sol[10][3]  := 35;
trtm_main_table[33].sol[10][4]  := 0 ;

trtm_main_table[33].sol[11][1]  := 2 ;
trtm_main_table[33].sol[11][2]  := 32;
trtm_main_table[33].sol[11][3]  := 12;
trtm_main_table[33].sol[11][4]  := 0 ;

trtm_main_table[33].sol[12][1]  := 15;
trtm_main_table[33].sol[12][2]  := 34;
trtm_main_table[33].sol[12][3]  := 29;
trtm_main_table[33].sol[12][4]  := 28;

trtm_main_table[33].sol[13][1]  := 32;
trtm_main_table[33].sol[13][2]  := 35;
trtm_main_table[33].sol[13][3]  := 30;
trtm_main_table[33].sol[13][4]  := 0 ;

trtm_main_table[33].sol[14][1]  := 32;
trtm_main_table[33].sol[14][2]  := 40;
trtm_main_table[33].sol[14][3]  := 3 ;
trtm_main_table[33].sol[14][4]  := 28;

trtm_main_table[33].sol[15][1]  := 29;
trtm_main_table[33].sol[15][2]  := 3 ;
trtm_main_table[33].sol[15][3]  := 8 ;
trtm_main_table[33].sol[15][4]  := 25;

trtm_main_table[33].sol[16][1]  := 1 ;
trtm_main_table[33].sol[16][2]  := 16;
trtm_main_table[33].sol[16][3]  := 25;
trtm_main_table[33].sol[16][4]  := 0 ;

trtm_main_table[33].sol[17][1]  := 26;
trtm_main_table[33].sol[17][2]  := 27;
trtm_main_table[33].sol[17][3]  := 13;
trtm_main_table[33].sol[17][4]  := 0 ;

trtm_main_table[33].sol[18][1]  := 13;
trtm_main_table[33].sol[18][2]  := 17;
trtm_main_table[33].sol[18][3]  := 1 ;
trtm_main_table[33].sol[18][4]  := 24;

trtm_main_table[33].sol[19][1]  := 1 ;
trtm_main_table[33].sol[19][2]  := 13;
trtm_main_table[33].sol[19][3]  := 24;
trtm_main_table[33].sol[19][4]  := 0 ;

trtm_main_table[33].sol[20][1]  := 0 ;
trtm_main_table[33].sol[20][2]  := 0 ;
trtm_main_table[33].sol[20][3]  := 0 ;
trtm_main_table[33].sol[20][4]  := 0 ;

trtm_main_table[33].sol[21][1]  := 35;
trtm_main_table[33].sol[21][2]  := 34;
trtm_main_table[33].sol[21][3]  := 2 ;
trtm_main_table[33].sol[21][4]  := 10;

trtm_main_table[33].sol[22][1]  := 2 ;
trtm_main_table[33].sol[22][2]  := 19;
trtm_main_table[33].sol[22][3]  := 13;
trtm_main_table[33].sol[22][4]  := 0 ;

trtm_main_table[33].sol[23][1]  := 28;
trtm_main_table[33].sol[23][2]  := 32;
trtm_main_table[33].sol[23][3]  := 2 ;
trtm_main_table[33].sol[23][4]  := 24;

trtm_main_table[33].sol[24][1]  := 4 ;
trtm_main_table[33].sol[24][2]  := 10;
trtm_main_table[33].sol[24][3]  := 27;
trtm_main_table[33].sol[24][4]  := 22;

trtm_main_table[33].sol[25][1]  := 4 ;
trtm_main_table[33].sol[25][2]  := 28;
trtm_main_table[33].sol[25][3]  := 10;
trtm_main_table[33].sol[25][4]  := 34;

trtm_main_table[33].sol[26][1]  := 12;
trtm_main_table[33].sol[26][2]  := 35;
trtm_main_table[33].sol[26][3]  := 0 ;
trtm_main_table[33].sol[26][4]  := 0 ;

trtm_main_table[33].sol[27][1]  := 17;
trtm_main_table[33].sol[27][2]  := 27;
trtm_main_table[33].sol[27][3]  := 8 ;
trtm_main_table[33].sol[27][4]  := 40;

trtm_main_table[33].sol[28][1]  := 25;
trtm_main_table[33].sol[28][2]  := 13;
trtm_main_table[33].sol[28][3]  := 2 ;
trtm_main_table[33].sol[28][4]  := 34;

trtm_main_table[33].sol[29][1]  := 1 ;
trtm_main_table[33].sol[29][2]  := 32;
trtm_main_table[33].sol[29][3]  := 35;
trtm_main_table[33].sol[29][4]  := 23;

trtm_main_table[33].sol[30][1]  := 2 ;
trtm_main_table[33].sol[30][2]  := 25;
trtm_main_table[33].sol[30][3]  := 28;
trtm_main_table[33].sol[30][4]  := 39;

trtm_main_table[33].sol[31][1]  := 0 ;
trtm_main_table[33].sol[31][2]  := 0 ;
trtm_main_table[33].sol[31][3]  := 0 ;
trtm_main_table[33].sol[31][4]  := 0 ;

trtm_main_table[33].sol[32][1]  := 2 ;
trtm_main_table[33].sol[32][2]  := 5 ;
trtm_main_table[33].sol[32][3]  := 12;
trtm_main_table[33].sol[32][4]  := 0 ;

trtm_main_table[33].sol[33][1]  := 0 ;
trtm_main_table[33].sol[33][2]  := 0 ;
trtm_main_table[33].sol[33][3]  := 0 ;
trtm_main_table[33].sol[33][4]  := 0 ;

trtm_main_table[33].sol[34][1]  := 12;
trtm_main_table[33].sol[34][2]  := 26;
trtm_main_table[33].sol[34][3]  := 1 ;
trtm_main_table[33].sol[34][4]  := 32;

trtm_main_table[33].sol[35][1]  := 15;
trtm_main_table[33].sol[35][2]  := 34;
trtm_main_table[33].sol[35][3]  := 1 ;
trtm_main_table[33].sol[35][4]  := 16;

trtm_main_table[33].sol[36][1]  := 32;
trtm_main_table[33].sol[36][2]  := 25;
trtm_main_table[33].sol[36][3]  := 12;
trtm_main_table[33].sol[36][4]  := 17;

trtm_main_table[33].sol[37][1]  := 0 ;
trtm_main_table[33].sol[37][2]  := 0 ;
trtm_main_table[33].sol[37][3]  := 0 ;
trtm_main_table[33].sol[37][4]  := 0 ;

trtm_main_table[33].sol[38][1]  := 1 ;
trtm_main_table[33].sol[38][2]  := 34;
trtm_main_table[33].sol[38][3]  := 12;
trtm_main_table[33].sol[38][4]  := 3 ;

trtm_main_table[33].sol[39][1]  := 15;
trtm_main_table[33].sol[39][2]  := 1 ;
trtm_main_table[33].sol[39][3]  := 28;
trtm_main_table[33].sol[39][4]  := 0 ;

trtm_main_table[34].id         := 34;
trtm_main_table[34].desc       := 'Удобство ремонта';


trtm_main_table[34].sol[1][1]  := 2 ;
trtm_main_table[34].sol[1][2]  := 27;
trtm_main_table[34].sol[1][3]  := 35;
trtm_main_table[34].sol[1][4]  := 11;

trtm_main_table[34].sol[2][1]  := 2 ;
trtm_main_table[34].sol[2][2]  := 27;
trtm_main_table[34].sol[2][3]  := 35;
trtm_main_table[34].sol[2][4]  := 11;

trtm_main_table[34].sol[3][1]  := 1 ;
trtm_main_table[34].sol[3][2]  := 28;
trtm_main_table[34].sol[3][3]  := 10;
trtm_main_table[34].sol[3][4]  := 25;

trtm_main_table[34].sol[4][1]  := 3 ;
trtm_main_table[34].sol[4][2]  := 18;
trtm_main_table[34].sol[4][3]  := 31;
trtm_main_table[34].sol[4][4]  := 0 ;

trtm_main_table[34].sol[5][1]  := 15;
trtm_main_table[34].sol[5][2]  := 13;
trtm_main_table[34].sol[5][3]  := 32;
trtm_main_table[34].sol[5][4]  := 0 ;

trtm_main_table[34].sol[6][1]  := 16;
trtm_main_table[34].sol[6][2]  := 25;
trtm_main_table[34].sol[6][3]  := 0 ;
trtm_main_table[34].sol[6][4]  := 0 ;

trtm_main_table[34].sol[7][1]  := 25;
trtm_main_table[34].sol[7][2]  := 2 ;
trtm_main_table[34].sol[7][3]  := 35;
trtm_main_table[34].sol[7][4]  := 11;

trtm_main_table[34].sol[8][1]  := 1 ;
trtm_main_table[34].sol[8][2]  := 0 ;
trtm_main_table[34].sol[8][3]  := 0 ;
trtm_main_table[34].sol[8][4]  := 0 ;

trtm_main_table[34].sol[9][1]  := 34;
trtm_main_table[34].sol[9][2]  := 9 ;
trtm_main_table[34].sol[9][3]  := 0 ;
trtm_main_table[34].sol[9][4]  := 0 ;

trtm_main_table[34].sol[10][1]  := 1 ;
trtm_main_table[34].sol[10][2]  := 11;
trtm_main_table[34].sol[10][3]  := 10;
trtm_main_table[34].sol[10][4]  := 0 ;

trtm_main_table[34].sol[11][1]  := 13;
trtm_main_table[34].sol[11][2]  := 0 ;
trtm_main_table[34].sol[11][3]  := 0 ;
trtm_main_table[34].sol[11][4]  := 0 ;

trtm_main_table[34].sol[12][1]  := 1 ;
trtm_main_table[34].sol[12][2]  := 13;
trtm_main_table[34].sol[12][3]  := 2 ;
trtm_main_table[34].sol[12][4]  := 4 ;

trtm_main_table[34].sol[13][1]  := 2 ;
trtm_main_table[34].sol[13][2]  := 35;
trtm_main_table[34].sol[13][3]  := 0 ;
trtm_main_table[34].sol[13][4]  := 0 ;

trtm_main_table[34].sol[14][1]  := 1 ;
trtm_main_table[34].sol[14][2]  := 11;
trtm_main_table[34].sol[14][3]  := 2 ;
trtm_main_table[34].sol[14][4]  := 9 ;

trtm_main_table[34].sol[15][1]  := 11;
trtm_main_table[34].sol[15][2]  := 29;
trtm_main_table[34].sol[15][3]  := 28;
trtm_main_table[34].sol[15][4]  := 27;

trtm_main_table[34].sol[16][1]  := 1 ;
trtm_main_table[34].sol[16][2]  := 0 ;
trtm_main_table[34].sol[16][3]  := 0 ;
trtm_main_table[34].sol[16][4]  := 0 ;

trtm_main_table[34].sol[17][1]  := 4 ;
trtm_main_table[34].sol[17][2]  := 10;
trtm_main_table[34].sol[17][3]  := 0 ;
trtm_main_table[34].sol[17][4]  := 0 ;

trtm_main_table[34].sol[18][1]  := 15;
trtm_main_table[34].sol[18][2]  := 1 ;
trtm_main_table[34].sol[18][3]  := 13;
trtm_main_table[34].sol[18][4]  := 0 ;

trtm_main_table[34].sol[19][1]  := 15;
trtm_main_table[34].sol[19][2]  := 1 ;
trtm_main_table[34].sol[19][3]  := 28;
trtm_main_table[34].sol[19][4]  := 16;

trtm_main_table[34].sol[20][1]  := 0 ;
trtm_main_table[34].sol[20][2]  := 0 ;
trtm_main_table[34].sol[20][3]  := 0 ;
trtm_main_table[34].sol[20][4]  := 0 ;

trtm_main_table[34].sol[21][1]  := 15;
trtm_main_table[34].sol[21][2]  := 10;
trtm_main_table[34].sol[21][3]  := 32;
trtm_main_table[34].sol[21][4]  := 2 ;

trtm_main_table[34].sol[22][1]  := 15;
trtm_main_table[34].sol[22][2]  := 1 ;
trtm_main_table[34].sol[22][3]  := 32;
trtm_main_table[34].sol[22][4]  := 19;

trtm_main_table[34].sol[23][1]  := 2 ;
trtm_main_table[34].sol[23][2]  := 35;
trtm_main_table[34].sol[23][3]  := 34;
trtm_main_table[34].sol[23][4]  := 27;

trtm_main_table[34].sol[24][1]  := 0 ;
trtm_main_table[34].sol[24][2]  := 0 ;
trtm_main_table[34].sol[24][3]  := 0 ;
trtm_main_table[34].sol[24][4]  := 0 ;

trtm_main_table[34].sol[25][1]  := 32;
trtm_main_table[34].sol[25][2]  := 1 ;
trtm_main_table[34].sol[25][3]  := 10;
trtm_main_table[34].sol[25][4]  := 25;

trtm_main_table[34].sol[26][1]  := 2 ;
trtm_main_table[34].sol[26][2]  := 28;
trtm_main_table[34].sol[26][3]  := 10;
trtm_main_table[34].sol[26][4]  := 25;

trtm_main_table[34].sol[27][1]  := 11;
trtm_main_table[34].sol[27][2]  := 10;
trtm_main_table[34].sol[27][3]  := 1 ;
trtm_main_table[34].sol[27][4]  := 16;

trtm_main_table[34].sol[28][1]  := 10;
trtm_main_table[34].sol[28][2]  := 2 ;
trtm_main_table[34].sol[28][3]  := 13;
trtm_main_table[34].sol[28][4]  := 0 ;

trtm_main_table[34].sol[29][1]  := 25;
trtm_main_table[34].sol[29][2]  := 10;
trtm_main_table[34].sol[29][3]  := 0 ;
trtm_main_table[34].sol[29][4]  := 0 ;

trtm_main_table[34].sol[30][1]  := 35;
trtm_main_table[34].sol[30][2]  := 10;
trtm_main_table[34].sol[30][3]  := 2 ;
trtm_main_table[34].sol[30][4]  := 16;

trtm_main_table[34].sol[31][1]  := 0 ;
trtm_main_table[34].sol[31][2]  := 0 ;
trtm_main_table[34].sol[31][3]  := 0 ;
trtm_main_table[34].sol[31][4]  := 0 ;

trtm_main_table[34].sol[32][1]  := 1 ;
trtm_main_table[34].sol[32][2]  := 35;
trtm_main_table[34].sol[32][3]  := 11;
trtm_main_table[34].sol[32][4]  := 10;

trtm_main_table[34].sol[33][1]  := 1 ;
trtm_main_table[34].sol[33][2]  := 12;
trtm_main_table[34].sol[33][3]  := 26;
trtm_main_table[34].sol[33][4]  := 15;

trtm_main_table[34].sol[34][1]  := 0 ;
trtm_main_table[34].sol[34][2]  := 0 ;
trtm_main_table[34].sol[34][3]  := 0 ;
trtm_main_table[34].sol[34][4]  := 0 ;

trtm_main_table[34].sol[35][1]  := 7 ;
trtm_main_table[34].sol[35][2]  := 1 ;
trtm_main_table[34].sol[35][3]  := 4 ;
trtm_main_table[34].sol[35][4]  := 16;

trtm_main_table[34].sol[36][1]  := 36;
trtm_main_table[34].sol[36][2]  := 1 ;
trtm_main_table[34].sol[36][3]  := 13;
trtm_main_table[34].sol[36][4]  := 11;

trtm_main_table[34].sol[37][1]  := 0 ;
trtm_main_table[34].sol[37][2]  := 0 ;
trtm_main_table[34].sol[37][3]  := 0 ;
trtm_main_table[34].sol[37][4]  := 0 ;

trtm_main_table[34].sol[38][1]  := 34;
trtm_main_table[34].sol[38][2]  := 35;
trtm_main_table[34].sol[38][3]  := 7 ;
trtm_main_table[34].sol[38][4]  := 13;

trtm_main_table[34].sol[39][1]  := 1 ;
trtm_main_table[34].sol[39][2]  := 32;
trtm_main_table[34].sol[39][3]  := 10;
trtm_main_table[34].sol[39][4]  := 0 ;

trtm_main_table[35].id         := 35;
trtm_main_table[35].desc       := 'Адаптация, универсальность';


trtm_main_table[35].sol[1][1]  := 1 ;
trtm_main_table[35].sol[1][2]  := 6 ;
trtm_main_table[35].sol[1][3]  := 15;
trtm_main_table[35].sol[1][4]  := 8 ;

trtm_main_table[35].sol[2][1]  := 19;
trtm_main_table[35].sol[2][2]  := 15;
trtm_main_table[35].sol[2][3]  := 29;
trtm_main_table[35].sol[2][4]  := 16;

trtm_main_table[35].sol[3][1]  := 35;
trtm_main_table[35].sol[3][2]  := 1 ;
trtm_main_table[35].sol[3][3]  := 29;
trtm_main_table[35].sol[3][4]  := 2 ;

trtm_main_table[35].sol[4][1]  := 1 ;
trtm_main_table[35].sol[4][2]  := 35;
trtm_main_table[35].sol[4][3]  := 16;
trtm_main_table[35].sol[4][4]  := 0 ;

trtm_main_table[35].sol[5][1]  := 35;
trtm_main_table[35].sol[5][2]  := 30;
trtm_main_table[35].sol[5][3]  := 29;
trtm_main_table[35].sol[5][4]  := 7 ;

trtm_main_table[35].sol[6][1]  := 15;
trtm_main_table[35].sol[6][2]  := 16;
trtm_main_table[35].sol[6][3]  := 0 ;
trtm_main_table[35].sol[6][4]  := 0 ;

trtm_main_table[35].sol[7][1]  := 15;
trtm_main_table[35].sol[7][2]  := 35;
trtm_main_table[35].sol[7][3]  := 29;
trtm_main_table[35].sol[7][4]  := 0 ;

trtm_main_table[35].sol[8][1]  := 0 ;
trtm_main_table[35].sol[8][2]  := 0 ;
trtm_main_table[35].sol[8][3]  := 0 ;
trtm_main_table[35].sol[8][4]  := 0 ;

trtm_main_table[35].sol[9][1]  := 35;
trtm_main_table[35].sol[9][2]  := 10;
trtm_main_table[35].sol[9][3]  := 14;
trtm_main_table[35].sol[9][4]  := 0 ;

trtm_main_table[35].sol[10][1]  := 15;
trtm_main_table[35].sol[10][2]  := 17;
trtm_main_table[35].sol[10][3]  := 20;
trtm_main_table[35].sol[10][4]  := 0 ;

trtm_main_table[35].sol[11][1]  := 35;
trtm_main_table[35].sol[11][2]  := 16;
trtm_main_table[35].sol[11][3]  := 0 ;
trtm_main_table[35].sol[11][4]  := 0 ;

trtm_main_table[35].sol[12][1]  := 15;
trtm_main_table[35].sol[12][2]  := 37;
trtm_main_table[35].sol[12][3]  := 1 ;
trtm_main_table[35].sol[12][4]  := 8 ;

trtm_main_table[35].sol[13][1]  := 35;
trtm_main_table[35].sol[13][2]  := 30;
trtm_main_table[35].sol[13][3]  := 14;
trtm_main_table[35].sol[13][4]  := 0 ;

trtm_main_table[35].sol[14][1]  := 35;
trtm_main_table[35].sol[14][2]  := 3 ;
trtm_main_table[35].sol[14][3]  := 32;
trtm_main_table[35].sol[14][4]  := 6 ;

trtm_main_table[35].sol[15][1]  := 13;
trtm_main_table[35].sol[15][2]  := 1 ;
trtm_main_table[35].sol[15][3]  := 35;
trtm_main_table[35].sol[15][4]  := 0 ;

trtm_main_table[35].sol[16][1]  := 2 ;
trtm_main_table[35].sol[16][2]  := 16;
trtm_main_table[35].sol[16][3]  := 0 ;
trtm_main_table[35].sol[16][4]  := 0 ;

trtm_main_table[35].sol[17][1]  := 27;
trtm_main_table[35].sol[17][2]  := 2 ;
trtm_main_table[35].sol[17][3]  := 3 ;
trtm_main_table[35].sol[17][4]  := 35;

trtm_main_table[35].sol[18][1]  := 6 ;
trtm_main_table[35].sol[18][2]  := 22;
trtm_main_table[35].sol[18][3]  := 26;
trtm_main_table[35].sol[18][4]  := 1 ;

trtm_main_table[35].sol[19][1]  := 19;
trtm_main_table[35].sol[19][2]  := 35;
trtm_main_table[35].sol[19][3]  := 29;
trtm_main_table[35].sol[19][4]  := 13;

trtm_main_table[35].sol[20][1]  := 0 ;
trtm_main_table[35].sol[20][2]  := 0 ;
trtm_main_table[35].sol[20][3]  := 0 ;
trtm_main_table[35].sol[20][4]  := 0 ;

trtm_main_table[35].sol[21][1]  := 19;
trtm_main_table[35].sol[21][2]  := 1 ;
trtm_main_table[35].sol[21][3]  := 29;
trtm_main_table[35].sol[21][4]  := 0 ;

trtm_main_table[35].sol[22][1]  := 18;
trtm_main_table[35].sol[22][2]  := 15;
trtm_main_table[35].sol[22][3]  := 1 ;
trtm_main_table[35].sol[22][4]  := 0 ;

trtm_main_table[35].sol[23][1]  := 15;
trtm_main_table[35].sol[23][2]  := 10;
trtm_main_table[35].sol[23][3]  := 2 ;
trtm_main_table[35].sol[23][4]  := 13;

trtm_main_table[35].sol[24][1]  := 0 ;
trtm_main_table[35].sol[24][2]  := 0 ;
trtm_main_table[35].sol[24][3]  := 0 ;
trtm_main_table[35].sol[24][4]  := 0 ;

trtm_main_table[35].sol[25][1]  := 35;
trtm_main_table[35].sol[25][2]  := 28;
trtm_main_table[35].sol[25][3]  := 0 ;
trtm_main_table[35].sol[25][4]  := 0 ;

trtm_main_table[35].sol[26][1]  := 3 ;
trtm_main_table[35].sol[26][2]  := 35;
trtm_main_table[35].sol[26][3]  := 15;
trtm_main_table[35].sol[26][4]  := 0 ;

trtm_main_table[35].sol[27][1]  := 35;
trtm_main_table[35].sol[27][2]  := 13;
trtm_main_table[35].sol[27][3]  := 8 ;
trtm_main_table[35].sol[27][4]  := 24;

trtm_main_table[35].sol[28][1]  := 35;
trtm_main_table[35].sol[28][2]  := 5 ;
trtm_main_table[35].sol[28][3]  := 1 ;
trtm_main_table[35].sol[28][4]  := 10;

trtm_main_table[35].sol[29][1]  := 0 ;
trtm_main_table[35].sol[29][2]  := 0 ;
trtm_main_table[35].sol[29][3]  := 0 ;
trtm_main_table[35].sol[29][4]  := 0 ;

trtm_main_table[35].sol[30][1]  := 35;
trtm_main_table[35].sol[30][2]  := 11;
trtm_main_table[35].sol[30][3]  := 32;
trtm_main_table[35].sol[30][4]  := 31;

trtm_main_table[35].sol[31][1]  := 0 ;
trtm_main_table[35].sol[31][2]  := 0 ;
trtm_main_table[35].sol[31][3]  := 0 ;
trtm_main_table[35].sol[31][4]  := 0 ;

trtm_main_table[35].sol[32][1]  := 1 ;
trtm_main_table[35].sol[32][2]  := 13;
trtm_main_table[35].sol[32][3]  := 31;
trtm_main_table[35].sol[32][4]  := 0 ;

trtm_main_table[35].sol[33][1]  := 15;
trtm_main_table[35].sol[33][2]  := 34;
trtm_main_table[35].sol[33][3]  := 1 ;
trtm_main_table[35].sol[33][4]  := 16;

trtm_main_table[35].sol[34][1]  := 1 ;
trtm_main_table[35].sol[34][2]  := 16;
trtm_main_table[35].sol[34][3]  := 7 ;
trtm_main_table[35].sol[34][4]  := 4 ;

trtm_main_table[35].sol[35][1]  := 0 ;
trtm_main_table[35].sol[35][2]  := 0 ;
trtm_main_table[35].sol[35][3]  := 0 ;
trtm_main_table[35].sol[35][4]  := 0 ;

trtm_main_table[35].sol[36][1]  := 15;
trtm_main_table[35].sol[36][2]  := 29;
trtm_main_table[35].sol[36][3]  := 37;
trtm_main_table[35].sol[36][4]  := 28;

trtm_main_table[35].sol[37][1]  := 1 ;
trtm_main_table[35].sol[37][2]  := 0 ;
trtm_main_table[35].sol[37][3]  := 0 ;
trtm_main_table[35].sol[37][4]  := 0 ;

trtm_main_table[35].sol[38][1]  := 27;
trtm_main_table[35].sol[38][2]  := 34;
trtm_main_table[35].sol[38][3]  := 35;
trtm_main_table[35].sol[38][4]  := 0 ;

trtm_main_table[35].sol[39][1]  := 35;
trtm_main_table[35].sol[39][2]  := 28;
trtm_main_table[35].sol[39][3]  := 6 ;
trtm_main_table[35].sol[39][4]  := 37;

trtm_main_table[36].id         := 36;
trtm_main_table[36].desc       := 'Сложность устройства';


trtm_main_table[36].sol[1][1]  := 26;
trtm_main_table[36].sol[1][2]  := 30;
trtm_main_table[36].sol[1][3]  := 34;
trtm_main_table[36].sol[1][4]  := 36;

trtm_main_table[36].sol[2][1]  := 2 ;
trtm_main_table[36].sol[2][2]  := 26;
trtm_main_table[36].sol[2][3]  := 35;
trtm_main_table[36].sol[2][4]  := 39;

trtm_main_table[36].sol[3][1]  := 1 ;
trtm_main_table[36].sol[3][2]  := 19;
trtm_main_table[36].sol[3][3]  := 26;
trtm_main_table[36].sol[3][4]  := 24;

trtm_main_table[36].sol[4][1]  := 26;
trtm_main_table[36].sol[4][2]  := 0 ;
trtm_main_table[36].sol[4][3]  := 0 ;
trtm_main_table[36].sol[4][4]  := 0 ;

trtm_main_table[36].sol[5][1]  := 14;
trtm_main_table[36].sol[5][2]  := 1 ;
trtm_main_table[36].sol[5][3]  := 13;
trtm_main_table[36].sol[5][4]  := 16;

trtm_main_table[36].sol[6][1]  := 6 ;
trtm_main_table[36].sol[6][2]  := 36;
trtm_main_table[36].sol[6][3]  := 0 ;
trtm_main_table[36].sol[6][4]  := 0 ;

trtm_main_table[36].sol[7][1]  := 34;
trtm_main_table[36].sol[7][2]  := 26;
trtm_main_table[36].sol[7][3]  := 6 ;
trtm_main_table[36].sol[7][4]  := 0 ;

trtm_main_table[36].sol[8][1]  := 1 ;
trtm_main_table[36].sol[8][2]  := 16;
trtm_main_table[36].sol[8][3]  := 0 ;
trtm_main_table[36].sol[8][4]  := 0 ;

trtm_main_table[36].sol[9][1]  := 34;
trtm_main_table[36].sol[9][2]  := 10;
trtm_main_table[36].sol[9][3]  := 28;
trtm_main_table[36].sol[9][4]  := 0 ;

trtm_main_table[36].sol[10][1]  := 26;
trtm_main_table[36].sol[10][2]  := 16;
trtm_main_table[36].sol[10][3]  := 0 ;
trtm_main_table[36].sol[10][4]  := 0 ;

trtm_main_table[36].sol[11][1]  := 19;
trtm_main_table[36].sol[11][2]  := 1 ;
trtm_main_table[36].sol[11][3]  := 35;
trtm_main_table[36].sol[11][4]  := 0 ;

trtm_main_table[36].sol[12][1]  := 29;
trtm_main_table[36].sol[12][2]  := 13;
trtm_main_table[36].sol[12][3]  := 28;
trtm_main_table[36].sol[12][4]  := 15;

trtm_main_table[36].sol[13][1]  := 2 ;
trtm_main_table[36].sol[13][2]  := 22;
trtm_main_table[36].sol[13][3]  := 17;
trtm_main_table[36].sol[13][4]  := 19;

trtm_main_table[36].sol[14][1]  := 2 ;
trtm_main_table[36].sol[14][2]  := 13;
trtm_main_table[36].sol[14][3]  := 28;
trtm_main_table[36].sol[14][4]  := 0 ;

trtm_main_table[36].sol[15][1]  := 10;
trtm_main_table[36].sol[15][2]  := 4 ;
trtm_main_table[36].sol[15][3]  := 28;
trtm_main_table[36].sol[15][4]  := 15;

trtm_main_table[36].sol[16][1]  := 0 ;
trtm_main_table[36].sol[16][2]  := 0 ;
trtm_main_table[36].sol[16][3]  := 0 ;
trtm_main_table[36].sol[16][4]  := 0 ;

trtm_main_table[36].sol[17][1]  := 2 ;
trtm_main_table[36].sol[17][2]  := 17;
trtm_main_table[36].sol[17][3]  := 13;
trtm_main_table[36].sol[17][4]  := 0 ;

trtm_main_table[36].sol[18][1]  := 24;
trtm_main_table[36].sol[18][2]  := 17;
trtm_main_table[36].sol[18][3]  := 13;
trtm_main_table[36].sol[18][4]  := 0 ;

trtm_main_table[36].sol[19][1]  := 27;
trtm_main_table[36].sol[19][2]  := 2 ;
trtm_main_table[36].sol[19][3]  := 29;
trtm_main_table[36].sol[19][4]  := 28;

trtm_main_table[36].sol[20][1]  := 0 ;
trtm_main_table[36].sol[20][2]  := 0 ;
trtm_main_table[36].sol[20][3]  := 0 ;
trtm_main_table[36].sol[20][4]  := 0 ;

trtm_main_table[36].sol[21][1]  := 20;
trtm_main_table[36].sol[21][2]  := 19;
trtm_main_table[36].sol[21][3]  := 30;
trtm_main_table[36].sol[21][4]  := 34;

trtm_main_table[36].sol[22][1]  := 10;
trtm_main_table[36].sol[22][2]  := 35;
trtm_main_table[36].sol[22][3]  := 13;
trtm_main_table[36].sol[22][4]  := 2 ;

trtm_main_table[36].sol[23][1]  := 35;
trtm_main_table[36].sol[23][2]  := 10;
trtm_main_table[36].sol[23][3]  := 28;
trtm_main_table[36].sol[23][4]  := 29;

trtm_main_table[36].sol[24][1]  := 0 ;
trtm_main_table[36].sol[24][2]  := 0 ;
trtm_main_table[36].sol[24][3]  := 0 ;
trtm_main_table[36].sol[24][4]  := 0 ;

trtm_main_table[36].sol[25][1]  := 6 ;
trtm_main_table[36].sol[25][2]  := 29;
trtm_main_table[36].sol[25][3]  := 0 ;
trtm_main_table[36].sol[25][4]  := 0 ;

trtm_main_table[36].sol[26][1]  := 13;
trtm_main_table[36].sol[26][2]  := 3 ;
trtm_main_table[36].sol[26][3]  := 27;
trtm_main_table[36].sol[26][4]  := 10;

trtm_main_table[36].sol[27][1]  := 13;
trtm_main_table[36].sol[27][2]  := 35;
trtm_main_table[36].sol[27][3]  := 1 ;
trtm_main_table[36].sol[27][4]  := 0 ;

trtm_main_table[36].sol[28][1]  := 2 ;
trtm_main_table[36].sol[28][2]  := 26;
trtm_main_table[36].sol[28][3]  := 10;
trtm_main_table[36].sol[28][4]  := 34;

trtm_main_table[36].sol[29][1]  := 26;
trtm_main_table[36].sol[29][2]  := 24;
trtm_main_table[36].sol[29][3]  := 32;
trtm_main_table[36].sol[29][4]  := 0 ;

trtm_main_table[36].sol[30][1]  := 22;
trtm_main_table[36].sol[30][2]  := 19;
trtm_main_table[36].sol[30][3]  := 29;
trtm_main_table[36].sol[30][4]  := 40;

trtm_main_table[36].sol[31][1]  := 19;
trtm_main_table[36].sol[31][2]  := 1 ;
trtm_main_table[36].sol[31][3]  := 0 ;
trtm_main_table[36].sol[31][4]  := 0 ;

trtm_main_table[36].sol[32][1]  := 27;
trtm_main_table[36].sol[32][2]  := 26;
trtm_main_table[36].sol[32][3]  := 1 ;
trtm_main_table[36].sol[32][4]  := 13;

trtm_main_table[36].sol[33][1]  := 27;
trtm_main_table[36].sol[33][2]  := 9 ;
trtm_main_table[36].sol[33][3]  := 26;
trtm_main_table[36].sol[33][4]  := 24;

trtm_main_table[36].sol[34][1]  := 1 ;
trtm_main_table[36].sol[34][2]  := 13;
trtm_main_table[36].sol[34][3]  := 0 ;
trtm_main_table[36].sol[34][4]  := 0 ;

trtm_main_table[36].sol[35][1]  := 29;
trtm_main_table[36].sol[35][2]  := 15;
trtm_main_table[36].sol[35][3]  := 28;
trtm_main_table[36].sol[35][4]  := 37;

trtm_main_table[36].sol[36][1]  := 0 ;
trtm_main_table[36].sol[36][2]  := 0 ;
trtm_main_table[36].sol[36][3]  := 0 ;
trtm_main_table[36].sol[36][4]  := 0 ;

trtm_main_table[36].sol[37][1]  := 15;
trtm_main_table[36].sol[37][2]  := 10;
trtm_main_table[36].sol[37][3]  := 37;
trtm_main_table[36].sol[37][4]  := 28;

trtm_main_table[36].sol[38][1]  := 15;
trtm_main_table[36].sol[38][2]  := 1 ;
trtm_main_table[36].sol[38][3]  := 24;
trtm_main_table[36].sol[38][4]  := 0 ;

trtm_main_table[36].sol[39][1]  := 12;
trtm_main_table[36].sol[39][2]  := 17;
trtm_main_table[36].sol[39][3]  := 28;
trtm_main_table[36].sol[39][4]  := 0 ;

trtm_main_table[37].id         := 37;
trtm_main_table[37].desc       := 'Сложность контроля и измерения';


trtm_main_table[37].sol[1][1]  := 27;
trtm_main_table[37].sol[1][2]  := 26;
trtm_main_table[37].sol[1][3]  := 28;
trtm_main_table[37].sol[1][4]  := 13;

trtm_main_table[37].sol[2][1]  := 6 ;
trtm_main_table[37].sol[2][2]  := 13;
trtm_main_table[37].sol[2][3]  := 28;
trtm_main_table[37].sol[2][4]  := 1 ;

trtm_main_table[37].sol[3][1]  := 16;
trtm_main_table[37].sol[3][2]  := 17;
trtm_main_table[37].sol[3][3]  := 26;
trtm_main_table[37].sol[3][4]  := 24;

trtm_main_table[37].sol[4][1]  := 26;
trtm_main_table[37].sol[4][2]  := 0 ;
trtm_main_table[37].sol[4][3]  := 0 ;
trtm_main_table[37].sol[4][4]  := 0 ;

trtm_main_table[37].sol[5][1]  := 2 ;
trtm_main_table[37].sol[5][2]  := 13;
trtm_main_table[37].sol[5][3]  := 18;
trtm_main_table[37].sol[5][4]  := 17;

trtm_main_table[37].sol[6][1]  := 2 ;
trtm_main_table[37].sol[6][2]  := 39;
trtm_main_table[37].sol[6][3]  := 30;
trtm_main_table[37].sol[6][4]  := 16;

trtm_main_table[37].sol[7][1]  := 29;
trtm_main_table[37].sol[7][2]  := 1 ;
trtm_main_table[37].sol[7][3]  := 4 ;
trtm_main_table[37].sol[7][4]  := 16;

trtm_main_table[37].sol[8][1]  := 2 ;
trtm_main_table[37].sol[8][2]  := 18;
trtm_main_table[37].sol[8][3]  := 26;
trtm_main_table[37].sol[8][4]  := 31;

trtm_main_table[37].sol[9][1]  := 3 ;
trtm_main_table[37].sol[9][2]  := 4 ;
trtm_main_table[37].sol[9][3]  := 16;
trtm_main_table[37].sol[9][4]  := 35;

trtm_main_table[37].sol[10][1]  := 36;
trtm_main_table[37].sol[10][2]  := 28;
trtm_main_table[37].sol[10][3]  := 40;
trtm_main_table[37].sol[10][4]  := 19;

trtm_main_table[37].sol[11][1]  := 35;
trtm_main_table[37].sol[11][2]  := 36;
trtm_main_table[37].sol[11][3]  := 37;
trtm_main_table[37].sol[11][4]  := 32;

trtm_main_table[37].sol[12][1]  := 27;
trtm_main_table[37].sol[12][2]  := 13;
trtm_main_table[37].sol[12][3]  := 1 ;
trtm_main_table[37].sol[12][4]  := 39;

trtm_main_table[37].sol[13][1]  := 11;
trtm_main_table[37].sol[13][2]  := 22;
trtm_main_table[37].sol[13][3]  := 39;
trtm_main_table[37].sol[13][4]  := 30;

trtm_main_table[37].sol[14][1]  := 27;
trtm_main_table[37].sol[14][2]  := 3 ;
trtm_main_table[37].sol[14][3]  := 15;
trtm_main_table[37].sol[14][4]  := 28;

trtm_main_table[37].sol[15][1]  := 19;
trtm_main_table[37].sol[15][2]  := 29;
trtm_main_table[37].sol[15][3]  := 25;
trtm_main_table[37].sol[15][4]  := 39;

trtm_main_table[37].sol[16][1]  := 25;
trtm_main_table[37].sol[16][2]  := 34;
trtm_main_table[37].sol[16][3]  := 6 ;
trtm_main_table[37].sol[16][4]  := 35;

trtm_main_table[37].sol[17][1]  := 3 ;
trtm_main_table[37].sol[17][2]  := 27;
trtm_main_table[37].sol[17][3]  := 35;
trtm_main_table[37].sol[17][4]  := 16;

trtm_main_table[37].sol[18][1]  := 2 ;
trtm_main_table[37].sol[18][2]  := 24;
trtm_main_table[37].sol[18][3]  := 26;
trtm_main_table[37].sol[18][4]  := 0 ;

trtm_main_table[37].sol[19][1]  := 35;
trtm_main_table[37].sol[19][2]  := 38;
trtm_main_table[37].sol[19][3]  := 0 ;
trtm_main_table[37].sol[19][4]  := 0 ;

trtm_main_table[37].sol[20][1]  := 19;
trtm_main_table[37].sol[20][2]  := 35;
trtm_main_table[37].sol[20][3]  := 16;
trtm_main_table[37].sol[20][4]  := 0 ;

trtm_main_table[37].sol[21][1]  := 19;
trtm_main_table[37].sol[21][2]  := 1 ;
trtm_main_table[37].sol[21][3]  := 16;
trtm_main_table[37].sol[21][4]  := 10;

trtm_main_table[37].sol[22][1]  := 35;
trtm_main_table[37].sol[22][2]  := 3 ;
trtm_main_table[37].sol[22][3]  := 15;
trtm_main_table[37].sol[22][4]  := 19;

trtm_main_table[37].sol[23][1]  := 1 ;
trtm_main_table[37].sol[23][2]  := 18;
trtm_main_table[37].sol[23][3]  := 10;
trtm_main_table[37].sol[23][4]  := 24;

trtm_main_table[37].sol[24][1]  := 35;
trtm_main_table[37].sol[24][2]  := 33;
trtm_main_table[37].sol[24][3]  := 27;
trtm_main_table[37].sol[24][4]  := 22;

trtm_main_table[37].sol[25][1]  := 18;
trtm_main_table[37].sol[25][2]  := 29;
trtm_main_table[37].sol[25][3]  := 32;
trtm_main_table[37].sol[25][4]  := 9 ;

trtm_main_table[37].sol[26][1]  := 3 ;
trtm_main_table[37].sol[26][2]  := 27;
trtm_main_table[37].sol[26][3]  := 29;
trtm_main_table[37].sol[26][4]  := 18;

trtm_main_table[37].sol[27][1]  := 27;
trtm_main_table[37].sol[27][2]  := 40;
trtm_main_table[37].sol[27][3]  := 28;
trtm_main_table[37].sol[27][4]  := 8 ;

trtm_main_table[37].sol[28][1]  := 26;
trtm_main_table[37].sol[28][2]  := 24;
trtm_main_table[37].sol[28][3]  := 32;
trtm_main_table[37].sol[28][4]  := 28;

trtm_main_table[37].sol[29][1]  := 0 ;
trtm_main_table[37].sol[29][2]  := 0 ;
trtm_main_table[37].sol[29][3]  := 0 ;
trtm_main_table[37].sol[29][4]  := 0 ;

trtm_main_table[37].sol[30][1]  := 22;
trtm_main_table[37].sol[30][2]  := 19;
trtm_main_table[37].sol[30][3]  := 29;
trtm_main_table[37].sol[30][4]  := 28;

trtm_main_table[37].sol[31][1]  := 2 ;
trtm_main_table[37].sol[31][2]  := 21;
trtm_main_table[37].sol[31][3]  := 0 ;
trtm_main_table[37].sol[31][4]  := 0 ;

trtm_main_table[37].sol[32][1]  := 5 ;
trtm_main_table[37].sol[32][2]  := 28;
trtm_main_table[37].sol[32][3]  := 11;
trtm_main_table[37].sol[32][4]  := 29;

trtm_main_table[37].sol[33][1]  := 2 ;
trtm_main_table[37].sol[33][2]  := 5 ;
trtm_main_table[37].sol[33][3]  := 0 ;
trtm_main_table[37].sol[33][4]  := 0 ;

trtm_main_table[37].sol[34][1]  := 12;
trtm_main_table[37].sol[34][2]  := 26;
trtm_main_table[37].sol[34][3]  := 0 ;
trtm_main_table[37].sol[34][4]  := 0 ;

trtm_main_table[37].sol[35][1]  := 1 ;
trtm_main_table[37].sol[35][2]  := 15;
trtm_main_table[37].sol[35][3]  := 0 ;
trtm_main_table[37].sol[35][4]  := 0 ;

trtm_main_table[37].sol[36][1]  := 15;
trtm_main_table[37].sol[36][2]  := 10;
trtm_main_table[37].sol[36][3]  := 37;
trtm_main_table[37].sol[36][4]  := 28;

trtm_main_table[37].sol[37][1]  := 0 ;
trtm_main_table[37].sol[37][2]  := 0 ;
trtm_main_table[37].sol[37][3]  := 0 ;
trtm_main_table[37].sol[37][4]  := 0 ;

trtm_main_table[37].sol[38][1]  := 34;
trtm_main_table[37].sol[38][2]  := 21;
trtm_main_table[37].sol[38][3]  := 0 ;
trtm_main_table[37].sol[38][4]  := 0 ;

trtm_main_table[37].sol[39][1]  := 35;
trtm_main_table[37].sol[39][2]  := 18;
trtm_main_table[37].sol[39][3]  := 0 ;
trtm_main_table[37].sol[39][4]  := 0 ;

trtm_main_table[38].id         := 38;
trtm_main_table[38].desc       := 'Степень автоматизации';


trtm_main_table[38].sol[1][1]  := 28;
trtm_main_table[38].sol[1][2]  := 26;
trtm_main_table[38].sol[1][3]  := 18;
trtm_main_table[38].sol[1][4]  := 35;

trtm_main_table[38].sol[2][1]  := 28;
trtm_main_table[38].sol[2][2]  := 26;
trtm_main_table[38].sol[2][3]  := 35;
trtm_main_table[38].sol[2][4]  := 10;

trtm_main_table[38].sol[3][1]  := 14;
trtm_main_table[38].sol[3][2]  := 13;
trtm_main_table[38].sol[3][3]  := 28;
trtm_main_table[38].sol[3][4]  := 17;

trtm_main_table[38].sol[4][1]  := 23;
trtm_main_table[38].sol[4][2]  := 0 ;
trtm_main_table[38].sol[4][3]  := 0 ;
trtm_main_table[38].sol[4][4]  := 0 ;

trtm_main_table[38].sol[5][1]  := 17;
trtm_main_table[38].sol[5][2]  := 14;
trtm_main_table[38].sol[5][3]  := 13;
trtm_main_table[38].sol[5][4]  := 0 ;

trtm_main_table[38].sol[6][1]  := 0 ;
trtm_main_table[38].sol[6][2]  := 0 ;
trtm_main_table[38].sol[6][3]  := 0 ;
trtm_main_table[38].sol[6][4]  := 0 ;

trtm_main_table[38].sol[7][1]  := 35;
trtm_main_table[38].sol[7][2]  := 13;
trtm_main_table[38].sol[7][3]  := 16;
trtm_main_table[38].sol[7][4]  := 0 ;

trtm_main_table[38].sol[8][1]  := 0 ;
trtm_main_table[38].sol[8][2]  := 0 ;
trtm_main_table[38].sol[8][3]  := 0 ;
trtm_main_table[38].sol[8][4]  := 0 ;

trtm_main_table[38].sol[9][1]  := 28;
trtm_main_table[38].sol[9][2]  := 10;
trtm_main_table[38].sol[9][3]  := 0 ;
trtm_main_table[38].sol[9][4]  := 0 ;

trtm_main_table[38].sol[10][1]  := 2 ;
trtm_main_table[38].sol[10][2]  := 35;
trtm_main_table[38].sol[10][3]  := 0 ;
trtm_main_table[38].sol[10][4]  := 0 ;

trtm_main_table[38].sol[11][1]  := 13;
trtm_main_table[38].sol[11][2]  := 35;
trtm_main_table[38].sol[11][3]  := 0 ;
trtm_main_table[38].sol[11][4]  := 0 ;

trtm_main_table[38].sol[12][1]  := 15;
trtm_main_table[38].sol[12][2]  := 32;
trtm_main_table[38].sol[12][3]  := 1 ;
trtm_main_table[38].sol[12][4]  := 13;

trtm_main_table[38].sol[13][1]  := 18;
trtm_main_table[38].sol[13][2]  := 1 ;
trtm_main_table[38].sol[13][3]  := 0 ;
trtm_main_table[38].sol[13][4]  := 0 ;

trtm_main_table[38].sol[14][1]  := 25;
trtm_main_table[38].sol[14][2]  := 13;
trtm_main_table[38].sol[14][3]  := 0 ;
trtm_main_table[38].sol[14][4]  := 0 ;

trtm_main_table[38].sol[15][1]  := 6 ;
trtm_main_table[38].sol[15][2]  := 9 ;
trtm_main_table[38].sol[15][3]  := 0 ;
trtm_main_table[38].sol[15][4]  := 0 ;

trtm_main_table[38].sol[16][1]  := 0 ;
trtm_main_table[38].sol[16][2]  := 0 ;
trtm_main_table[38].sol[16][3]  := 0 ;
trtm_main_table[38].sol[16][4]  := 0 ;

trtm_main_table[38].sol[17][1]  := 26;
trtm_main_table[38].sol[17][2]  := 2 ;
trtm_main_table[38].sol[17][3]  := 19;
trtm_main_table[38].sol[17][4]  := 0 ;

trtm_main_table[38].sol[18][1]  := 8 ;
trtm_main_table[38].sol[18][2]  := 32;
trtm_main_table[38].sol[18][3]  := 19;
trtm_main_table[38].sol[18][4]  := 0 ;

trtm_main_table[38].sol[19][1]  := 2 ;
trtm_main_table[38].sol[19][2]  := 32;
trtm_main_table[38].sol[19][3]  := 13;
trtm_main_table[38].sol[19][4]  := 0 ;

trtm_main_table[38].sol[20][1]  := 0 ;
trtm_main_table[38].sol[20][2]  := 0 ;
trtm_main_table[38].sol[20][3]  := 0 ;
trtm_main_table[38].sol[20][4]  := 0 ;

trtm_main_table[38].sol[21][1]  := 28;
trtm_main_table[38].sol[21][2]  := 2 ;
trtm_main_table[38].sol[21][3]  := 27;
trtm_main_table[38].sol[21][4]  := 0 ;

trtm_main_table[38].sol[22][1]  := 23;
trtm_main_table[38].sol[22][2]  := 28;
trtm_main_table[38].sol[22][3]  := 0 ;
trtm_main_table[38].sol[22][4]  := 0 ;

trtm_main_table[38].sol[23][1]  := 35;
trtm_main_table[38].sol[23][2]  := 10;
trtm_main_table[38].sol[23][3]  := 18;
trtm_main_table[38].sol[23][4]  := 5 ;

trtm_main_table[38].sol[24][1]  := 35;
trtm_main_table[38].sol[24][2]  := 33;
trtm_main_table[38].sol[24][3]  := 0 ;
trtm_main_table[38].sol[24][4]  := 0 ;

trtm_main_table[38].sol[25][1]  := 24;
trtm_main_table[38].sol[25][2]  := 28;
trtm_main_table[38].sol[25][3]  := 35;
trtm_main_table[38].sol[25][4]  := 30;

trtm_main_table[38].sol[26][1]  := 35;
trtm_main_table[38].sol[26][2]  := 13;
trtm_main_table[38].sol[26][3]  := 0 ;
trtm_main_table[38].sol[26][4]  := 0 ;

trtm_main_table[38].sol[27][1]  := 11;
trtm_main_table[38].sol[27][2]  := 27;
trtm_main_table[38].sol[27][3]  := 32;
trtm_main_table[38].sol[27][4]  := 0 ;

trtm_main_table[38].sol[28][1]  := 28;
trtm_main_table[38].sol[28][2]  := 26;
trtm_main_table[38].sol[28][3]  := 10;
trtm_main_table[38].sol[28][4]  := 34;

trtm_main_table[38].sol[29][1]  := 28;
trtm_main_table[38].sol[29][2]  := 26;
trtm_main_table[38].sol[29][3]  := 18;
trtm_main_table[38].sol[29][4]  := 23;

trtm_main_table[38].sol[30][1]  := 2 ;
trtm_main_table[38].sol[30][2]  := 33;
trtm_main_table[38].sol[30][3]  := 0 ;
trtm_main_table[38].sol[30][4]  := 0 ;

trtm_main_table[38].sol[31][1]  := 2 ;
trtm_main_table[38].sol[31][2]  := 0 ;
trtm_main_table[38].sol[31][3]  := 0 ;
trtm_main_table[38].sol[31][4]  := 0 ;

trtm_main_table[38].sol[32][1]  := 1 ;
trtm_main_table[38].sol[32][2]  := 26;
trtm_main_table[38].sol[32][3]  := 13;
trtm_main_table[38].sol[32][4]  := 0 ;

trtm_main_table[38].sol[33][1]  := 1 ;
trtm_main_table[38].sol[33][2]  := 12;
trtm_main_table[38].sol[33][3]  := 34;
trtm_main_table[38].sol[33][4]  := 3 ;

trtm_main_table[38].sol[34][1]  := 1 ;
trtm_main_table[38].sol[34][2]  := 35;
trtm_main_table[38].sol[34][3]  := 13;
trtm_main_table[38].sol[34][4]  := 0 ;

trtm_main_table[38].sol[35][1]  := 27;
trtm_main_table[38].sol[35][2]  := 4 ;
trtm_main_table[38].sol[35][3]  := 1 ;
trtm_main_table[38].sol[35][4]  := 35;

trtm_main_table[38].sol[36][1]  := 15;
trtm_main_table[38].sol[36][2]  := 24;
trtm_main_table[38].sol[36][3]  := 10;
trtm_main_table[38].sol[36][4]  := 0 ;

trtm_main_table[38].sol[37][1]  := 34;
trtm_main_table[38].sol[37][2]  := 27;
trtm_main_table[38].sol[37][3]  := 25;
trtm_main_table[38].sol[37][4]  := 0 ;

trtm_main_table[38].sol[38][1]  := 0 ;
trtm_main_table[38].sol[38][2]  := 0 ;
trtm_main_table[38].sol[38][3]  := 0 ;
trtm_main_table[38].sol[38][4]  := 0 ;

trtm_main_table[38].sol[39][1]  := 5 ;
trtm_main_table[38].sol[39][2]  := 12;
trtm_main_table[38].sol[39][3]  := 35;
trtm_main_table[38].sol[39][4]  := 26;

trtm_main_table[39].id         := 39;
trtm_main_table[39].desc       := 'Производительность';


trtm_main_table[39].sol[1][1]  := 35;
trtm_main_table[39].sol[1][2]  := 26;
trtm_main_table[39].sol[1][3]  := 24;
trtm_main_table[39].sol[1][4]  := 37;

trtm_main_table[39].sol[2][1]  := 28;
trtm_main_table[39].sol[2][2]  := 27;
trtm_main_table[39].sol[2][3]  := 15;
trtm_main_table[39].sol[2][4]  := 3 ;

trtm_main_table[39].sol[3][1]  := 18;
trtm_main_table[39].sol[3][2]  := 4 ;
trtm_main_table[39].sol[3][3]  := 20;
trtm_main_table[39].sol[3][4]  := 38;

trtm_main_table[39].sol[4][1]  := 30;
trtm_main_table[39].sol[4][2]  := 7 ;
trtm_main_table[39].sol[4][3]  := 14;
trtm_main_table[39].sol[4][4]  := 26;

trtm_main_table[39].sol[5][1]  := 10;
trtm_main_table[39].sol[5][2]  := 26;
trtm_main_table[39].sol[5][3]  := 34;
trtm_main_table[39].sol[5][4]  := 31;

trtm_main_table[39].sol[6][1]  := 10;
trtm_main_table[39].sol[6][2]  := 35;
trtm_main_table[39].sol[6][3]  := 17;
trtm_main_table[39].sol[6][4]  := 7 ;

trtm_main_table[39].sol[7][1]  := 2 ;
trtm_main_table[39].sol[7][2]  := 6 ;
trtm_main_table[39].sol[7][3]  := 34;
trtm_main_table[39].sol[7][4]  := 10;

trtm_main_table[39].sol[8][1]  := 35;
trtm_main_table[39].sol[8][2]  := 37;
trtm_main_table[39].sol[8][3]  := 10;
trtm_main_table[39].sol[8][4]  := 2 ;

trtm_main_table[39].sol[9][1]  := 0 ;
trtm_main_table[39].sol[9][2]  := 0 ;
trtm_main_table[39].sol[9][3]  := 0 ;
trtm_main_table[39].sol[9][4]  := 0 ;

trtm_main_table[39].sol[10][1]  := 28;
trtm_main_table[39].sol[10][2]  := 15;
trtm_main_table[39].sol[10][3]  := 10;
trtm_main_table[39].sol[10][4]  := 36;

trtm_main_table[39].sol[11][1]  := 10;
trtm_main_table[39].sol[11][2]  := 37;
trtm_main_table[39].sol[11][3]  := 14;
trtm_main_table[39].sol[11][4]  := 0 ;

trtm_main_table[39].sol[12][1]  := 14;
trtm_main_table[39].sol[12][2]  := 10;
trtm_main_table[39].sol[12][3]  := 34;
trtm_main_table[39].sol[12][4]  := 40;

trtm_main_table[39].sol[13][1]  := 35;
trtm_main_table[39].sol[13][2]  := 3 ;
trtm_main_table[39].sol[13][3]  := 22;
trtm_main_table[39].sol[13][4]  := 39;

trtm_main_table[39].sol[14][1]  := 29;
trtm_main_table[39].sol[14][2]  := 28;
trtm_main_table[39].sol[14][3]  := 10;
trtm_main_table[39].sol[14][4]  := 18;

trtm_main_table[39].sol[15][1]  := 35;
trtm_main_table[39].sol[15][2]  := 10;
trtm_main_table[39].sol[15][3]  := 2 ;
trtm_main_table[39].sol[15][4]  := 18;

trtm_main_table[39].sol[16][1]  := 20;
trtm_main_table[39].sol[16][2]  := 10;
trtm_main_table[39].sol[16][3]  := 16;
trtm_main_table[39].sol[16][4]  := 38;

trtm_main_table[39].sol[17][1]  := 35;
trtm_main_table[39].sol[17][2]  := 21;
trtm_main_table[39].sol[17][3]  := 28;
trtm_main_table[39].sol[17][4]  := 10;

trtm_main_table[39].sol[18][1]  := 26;
trtm_main_table[39].sol[18][2]  := 17;
trtm_main_table[39].sol[18][3]  := 19;
trtm_main_table[39].sol[18][4]  := 1 ;

trtm_main_table[39].sol[19][1]  := 35;
trtm_main_table[39].sol[19][2]  := 10;
trtm_main_table[39].sol[19][3]  := 38;
trtm_main_table[39].sol[19][4]  := 19;

trtm_main_table[39].sol[20][1]  := 1 ;
trtm_main_table[39].sol[20][2]  := 0 ;
trtm_main_table[39].sol[20][3]  := 0 ;
trtm_main_table[39].sol[20][4]  := 0 ;

trtm_main_table[39].sol[21][1]  := 35;
trtm_main_table[39].sol[21][2]  := 20;
trtm_main_table[39].sol[21][3]  := 10;
trtm_main_table[39].sol[21][4]  := 0 ;

trtm_main_table[39].sol[22][1]  := 28;
trtm_main_table[39].sol[22][2]  := 10;
trtm_main_table[39].sol[22][3]  := 29;
trtm_main_table[39].sol[22][4]  := 35;

trtm_main_table[39].sol[23][1]  := 28;
trtm_main_table[39].sol[23][2]  := 10;
trtm_main_table[39].sol[23][3]  := 35;
trtm_main_table[39].sol[23][4]  := 23;

trtm_main_table[39].sol[24][1]  := 13;
trtm_main_table[39].sol[24][2]  := 15;
trtm_main_table[39].sol[24][3]  := 23;
trtm_main_table[39].sol[24][4]  := 0 ;

trtm_main_table[39].sol[25][1]  := 0 ;
trtm_main_table[39].sol[25][2]  := 0 ;
trtm_main_table[39].sol[25][3]  := 0 ;
trtm_main_table[39].sol[25][4]  := 0 ;

trtm_main_table[39].sol[26][1]  := 35;
trtm_main_table[39].sol[26][2]  := 38;
trtm_main_table[39].sol[26][3]  := 0 ;
trtm_main_table[39].sol[26][4]  := 0 ;

trtm_main_table[39].sol[27][1]  := 1 ;
trtm_main_table[39].sol[27][2]  := 35;
trtm_main_table[39].sol[27][3]  := 10;
trtm_main_table[39].sol[27][4]  := 38;

trtm_main_table[39].sol[28][1]  := 1 ;
trtm_main_table[39].sol[28][2]  := 10;
trtm_main_table[39].sol[28][3]  := 34;
trtm_main_table[39].sol[28][4]  := 28;

trtm_main_table[39].sol[29][1]  := 32;
trtm_main_table[39].sol[29][2]  := 1 ;
trtm_main_table[39].sol[29][3]  := 18;
trtm_main_table[39].sol[29][4]  := 10;

trtm_main_table[39].sol[30][1]  := 22;
trtm_main_table[39].sol[30][2]  := 35;
trtm_main_table[39].sol[30][3]  := 13;
trtm_main_table[39].sol[30][4]  := 24;

trtm_main_table[39].sol[31][1]  := 35;
trtm_main_table[39].sol[31][2]  := 22;
trtm_main_table[39].sol[31][3]  := 18;
trtm_main_table[39].sol[31][4]  := 39;

trtm_main_table[39].sol[32][1]  := 35;
trtm_main_table[39].sol[32][2]  := 28;
trtm_main_table[39].sol[32][3]  := 2 ;
trtm_main_table[39].sol[32][4]  := 24;

trtm_main_table[39].sol[33][1]  := 1 ;
trtm_main_table[39].sol[33][2]  := 28;
trtm_main_table[39].sol[33][3]  := 7 ;
trtm_main_table[39].sol[33][4]  := 19;

trtm_main_table[39].sol[34][1]  := 1 ;
trtm_main_table[39].sol[34][2]  := 32;
trtm_main_table[39].sol[34][3]  := 10;
trtm_main_table[39].sol[34][4]  := 25;

trtm_main_table[39].sol[35][1]  := 1 ;
trtm_main_table[39].sol[35][2]  := 35;
trtm_main_table[39].sol[35][3]  := 28;
trtm_main_table[39].sol[35][4]  := 37;

trtm_main_table[39].sol[36][1]  := 12;
trtm_main_table[39].sol[36][2]  := 17;
trtm_main_table[39].sol[36][3]  := 28;
trtm_main_table[39].sol[36][4]  := 24;

trtm_main_table[39].sol[37][1]  := 35;
trtm_main_table[39].sol[37][2]  := 18;
trtm_main_table[39].sol[37][3]  := 27;
trtm_main_table[39].sol[37][4]  := 2 ;

trtm_main_table[39].sol[38][1]  := 5 ;
trtm_main_table[39].sol[38][2]  := 12;
trtm_main_table[39].sol[38][3]  := 35;
trtm_main_table[39].sol[38][4]  := 26;

trtm_main_table[39].sol[39][1]  := 0 ;
trtm_main_table[39].sol[39][2]  := 0 ;
trtm_main_table[39].sol[39][3]  := 0 ;
trtm_main_table[39].sol[39][4]  := 0 ;



end.

