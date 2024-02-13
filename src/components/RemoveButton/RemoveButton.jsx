import { Pressable } from "react-native";
import { Minus } from "lucide-react-native";

const RemoveButton = ({ setCount }) => {
  const onPressRemove = () => {
    setCount((prev) => (prev == 0 ? prev : prev - 1));
  };

  return (
    <Pressable
      onPress={onPressRemove}
      className="p-5 rounded-full bg-green-500 mx-2"
    >
      <Minus className="text-white" />
    </Pressable>
  );
};

export default RemoveButton;
