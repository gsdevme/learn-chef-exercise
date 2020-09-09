describe package('nginx') do
  it { should be_installed }
end

describe package('firewalld') do
  it { should be_installed }
end
