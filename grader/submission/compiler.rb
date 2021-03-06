class Grader::Submission::Compiler
  def initialize(file)
    @file = file
  end
  
  def compile
    system("gcc #{Shellwords.escape(@file)} -o #{output_filename}")
  end
  
  def compiled_output
    output_filename
  end
  
  private
  
  def output_filename
    'self_test'
  end
end