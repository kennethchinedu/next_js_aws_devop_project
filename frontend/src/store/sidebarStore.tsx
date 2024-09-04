import { create } from "zustand";

type sideBarStoreI = {
  isOpen: boolean;
  toggle: () => void;
};

const useSideBarStore = create<sideBarStoreI>((set) => ({
  isOpen: false,
  toggle: () => {
    set((state) => ({ isOpen: !state.isOpen }));
  },
}));
export default useSideBarStore;
