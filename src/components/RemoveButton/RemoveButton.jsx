import { Pressable } from "react-native";
import { Minus } from "lucide-react-native";
import { useState } from "react";

const RemoveButton = ({ setCount }) => {
  const [isPressed, setIsPressed] = useState(false);

  const onPressRemove = () => {
    setCount((prev) => (prev == 0 ? prev : prev - 1));
  };

  const handleIsPressed = () => {
    setIsPressed(prev => prev?false:true);
  };

  return (
    <Pressable
      onPress={onPressRemove}
      onPressIn={handleIsPressed}
      onPressOut={handleIsPressed}
      className={`p-5 mr-5 rounded-full transition-colors ${
        isPressed ? "bg-green-500/60" : "bg-green-500"
      }`}
    >
      <Minus className="text-white" />
    </Pressable>
  );
};

export default RemoveButton;
