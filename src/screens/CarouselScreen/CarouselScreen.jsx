import Carousel from "react-native-snap-carousel";
import { StatusBar } from "expo-status-bar";
import { Pressable, Text, View } from "react-native";
import { beers } from "../../data/beersData";
import  Constants from "expo-constants";
//Components
import ItemCarousel from "../../components/ItemCarousel/ItemCarousel";

const CarouselScreen = () => {
    return (
    <View className="flex-1 items-center justify-cente" style={{marginTop: Constants.statusBarHeight}}>
      <Carousel
        data={beers}
        renderItem={({ item }) => <ItemCarousel image={item.image} name={item.name} />}
        sliderWidth={400}
        itemWidth={220}
      />
      <Pressable className="mb-10 mt-5 px-6 py-1 rounded-md bg-yellow-400">
        <Text className="text-2xl">Guardar</Text>
      </Pressable>
      <StatusBar style="auto" />
    </View>
  );
};

export default CarouselScreen;