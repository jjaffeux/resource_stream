class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    Com::Joanzapata::Android::Iconify::IconDrawable.new(self, Com::Joanzapata::Android::Iconify::Iconify::IconValue::Fa_share)
  end
end
