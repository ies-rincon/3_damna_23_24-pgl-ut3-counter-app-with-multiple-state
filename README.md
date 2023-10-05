# 3DAMNA - PGL > UT3 > Counter App With State Manager (MultiProvider)

Esta es una aplicación de contador simple desarrollada en Flutter que utiliza el manejador de estados Provider. La aplicación muestra un contador y permite al usuario aumentar o disminuir el valor del contador haciendo clic en botones.

## Características

- Muestra un contador en pantalla.
- Permite al usuario aumentar o disminuir el contador haciendo clic en botones.
- Utiliza el manejador de estados Provider para administrar el estado de la aplicación de manera eficiente.

## Manejo de Estados con Provider

Esta aplicación utiliza el paquete [Provider](https://pub.dev/packages/provider) para administrar el estado de la aplicación de una manera sencilla y eficaz. El manejo de estados es un concepto fundamental en Flutter, y Provider es una de las bibliotecas más populares para implementarlo.

Para obtener más información sobre cómo se maneja el estado con Provider en Flutter, consulta la documentación oficial:

- [Introducción al Manejo de Estados en Flutter](https://docs.flutter.dev/data-and-backend/state-mgmt/intro)
- [Manejo de Estados Simple con Provider](https://docs.flutter.dev/data-and-backend/state-mgmt/simple)
- [Opciones de Manejo de Estados en Flutter](https://docs.flutter.dev/data-and-backend/state-mgmt/options)

## Interacción y Widgets

La aplicación utiliza algunos de los conceptos clave de interactividad y widgets en Flutter:

- Utiliza botones (`FloatingActionButton`) y (`ElevatedButton`) para permitir al usuario interactuar con la aplicación y modificar el contador.
- Los widgets de texto (`Text`) se utilizan para mostrar el valor actual del contador en la pantalla.

Para obtener más información sobre cómo agregar interactividad a las aplicaciones de Flutter y aprender sobre los widgets disponibles, consulta la [documentación oficial de Flutter](https://docs.flutter.dev/ui/interactivity).

## Navegación por Pestañas

Si deseas explorar la navegación por pestañas en Flutter, consulta la documentación de [BottomNavigationBar](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html).

## Ejemplo de Uso

A continuación, se muestra un ejemplo de cómo utilizar esta aplicación de contador con Provider:

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CounterProvider()),
        ],
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counterProvider.counter}',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterProvider.increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => counterProvider.decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
