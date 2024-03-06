import React, { createContext, useState } from 'react';

export const AuthContext = createContext({
  authData: null,
  setAuthData: () => {},
});

export const AuthProvider = ({ children }) => {
  const [authData, setAuthData] = useState(null);

  const providerAuthData = {
    authData,
    setAuthData,
  };

  return (
    <AuthContext.Provider value={providerAuthData}>
      {children}
    </AuthContext.Provider>
  );
};
