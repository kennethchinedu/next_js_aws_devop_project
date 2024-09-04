import { type ReactElement } from "react";
import { Navigate, useLocation } from "react-router-dom";
// import useAuthUser from "../hooks/useAuthUser";
import useAuthStore from "@/store/userStore";
import routes from "./routes";

interface AuthGuardProps {
  component: ReactElement;
  route: any;
}

// PS: This can be extended as we see fit
function AuthGuard({ component }: AuthGuardProps): ReactElement {
  const is_authenticated = useAuthStore((state) => state.is_authenticated);
  const locationInfo = useLocation();

  if (!is_authenticated) {
    //TODO:  add search params also if any exists
    return (
      <Navigate
        to={routes.LOGIN + (locationInfo?.search ? locationInfo.search : "")}
        state={locationInfo?.state}
        replace
      />
    );
  }

  return component;
}

export default AuthGuard;
