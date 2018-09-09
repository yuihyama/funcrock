def even(*args)
  args.select(&:even?)
end
