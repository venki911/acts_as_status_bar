require 'spec_helper'

#########################################

#Defines a class which implements the status bar gem.
class MyClass
  acts_as_status_bar
  
  MAX = 100
  
  def initialize 
    status_bar_init
  end
  
  def clear_destroy
    status_bar_init
    status_bar.message = "Deleting..."
    status_bar.max = MAX
  end
end

#########################################

describe ActsAsStatusBar do
  it "should be valid" do
    ActsAsStatusBar.should be_a(Module)
  end
end


describe ActsAsStatusBar::StatusBar do

  let(:status_bar) { ActsAsStatusBar::StatusBar.new(:id => 1) }
  let(:object) { MyClass.new(:status_bar_id => status_bar.id) }
  
  it "should be valid" do
    ActsAsStatusBar.should be_a(Class)
  end
  
  it "should be destroyed by destroying the parent object" do
    object.destroy!.should be_true, object.errors
    object.status_bar.should be nil
  end
  
  it "should assign the right id to #status_bar_id method" do
    object.status_bar_id.should equal(object.status_bar.id)
  end
end
