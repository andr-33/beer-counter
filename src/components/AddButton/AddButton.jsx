import { Pressable } from "react-native";
import { Plus } from "lucide-react-native";
import { useState } from "react";

const AddButton = ({ setCount }) => {
  const [isPressed, setIsPressed] = useState(false);

  const onPressAdd = () => {
    setCount((prev) => prev + 1);
  };

  const handleIsPressed = () => {
    setIsPressed((prev) => (prev ? false : true));
  };

  return (
    <Pressable
      onPress={onPressAdd}
      onPressIn={handleIsPressed}
      onPressOut={handleIsPressed}
      className={`p-5 mx-2 rounded-full transition-colors ${
        isPressed ? "bg-green-500/60" : "bg-green-500"
      }`}
    >
      <Plus className="text-white" />
    </Pressable>
  );
};

export default AddButton;
