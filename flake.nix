{
  description = "my rust templates";

  inputs = { };

  outputs = { self }: {
    templates = {
      default = {
        path = ./default;
        description = "basic";
      };
      marp = {
        path = ./marp;
        description = "marp slide";
      };
    };
  };
}
