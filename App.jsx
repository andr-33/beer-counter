import { StatusBar } from "expo-status-bar";
import { Pressable, Text, View } from "react-native";

import Carousel from "react-native-snap-carousel";
import ItemCarousel from "./src/components/ItemCarousel/ItemCarousel";

export default function App() {
  const beers = [
    {
      name: "Corto",
      ml: 120,
      image: require("./assets/pint-beer.png"),
    },
    {
      name: "Caña",
      ml: 225,
      image: require("./assets/pint-beer.png"),
    },
    {
      name: "Tercio",
      ml: 365,
      image: require("./assets/pint-beer.png"),
    },
    {
      name: "Jarra",
      ml: 500,
      image: require("./assets/pint-beer.png"),
    },
    {
      name: "Litrona",
      ml: 1000,
      image: require("./assets/pint-beer.png"),
    },
  ];

  return (
    <View className="flex-1 items-center justify-cente">
      <Carousel
        data={beers}
        renderItem={({ item }) => (
          <ItemCarousel image={item.image} name={item.name} />
        )}
        sliderWidth={400}
        itemWidth={200}
      />
      <Pressable className="mb-10 mt-5 px-6 py-1 rounded-md bg-yellow-400">
        <Text className="text-2xl">Guardar</Text>
      </Pressable>
      <StatusBar style="auto" />
    </View>
  );
}
