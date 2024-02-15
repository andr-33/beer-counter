import { View, Text, Image } from "react-native";
import { useState } from "react";
//Components
import RemoveButton from "../RemoveButton/RemoveButton";
import AddButton from "../AddButton/AddButton";

const ItemCarousel = ({ image, name }) => {
  const [count, setCount] = useState(0);

  return (
    <View className="flex-1 items-center justify-center bg-slate-400">
      <Text className="text-5xl">{count}</Text>
      <Image source={image} className="w-52 h-52 my-4" />
      <Text className="text-2xl font-bold">{name}</Text>
      <View className="flex-row mt-4">
        <RemoveButton setCount={setCount} />
        <AddButton setCount={setCount} />
      </View>
    </View>
  );
};

export default ItemCarousel;
