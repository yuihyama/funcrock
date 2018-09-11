def odd(*args)
  args.select(&:odd?)
end
