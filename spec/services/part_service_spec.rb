RSpec.describe PartService do
  before(:each) do
    @client = Client.create!(name: 'client')
    @job = @client.jobs.create!(name: 'job')
    @phase = @job.phases.create!(name: 'phase')
    @structure = Structure.create!(
      name: 'testSTRUCTURE', phase_id: @phase.id, quick_h: 48, quick_w: 40,
      quick_l: 40
    )
  end

  it 'creates svg' do
    @structure.panels.last.save!
    expect(@structure.panels.last.parts.where(length: nil).last.svg).to eq(basic_svg)
  end

  def basic_svg
    "<?xml version=\"1.0\" standalone=\"no\"?>\n<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">\n<svg width=\"400.0\" height=\"480.0\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\"><g><rect x=\"0\" y=\"0\" width=\"400.0\" height=\"480.0\" style=\"fill:rgba(255,255,255,0.3);stroke:black;\"/></g><g><rect x=\"0\" y=\"0\" width=\"400.0\" height=\"10\" style=\"fill:rgba(255,255,255,0.3);stroke-width:1;stroke:black;\"/><circle cx=\"5.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"45.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"85.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"125.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"165.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"205.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"245.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"285.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"325.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"365.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"5.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><rect x=\"10.0\" y=\"470.0\" width=\"380.0\" height=\"10\" style=\"fill:rgba(255,255,255,0.3);stroke-width:1;stroke:black;\"/><circle cx=\"385.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"345.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"305.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"265.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"225.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"185.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"145.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"105.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"65.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"25.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"15.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><rect x=\"0\" y=\"10.0\" width=\"10\" height=\"470.0\" style=\"fill:rgba(255,255,255,0.3);stroke-width:1;stroke:black;\"/><circle cx=\"5.0\" cy=\"475.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"435.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"395.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"355.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"315.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"275.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"235.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"195.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"155.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"115.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"75.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"35.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"5.0\" cy=\"15.0\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><rect x=\"390.0\" y=\"10.0\" width=\"10\" height=\"470.0\" style=\"fill:rgba(255,255,255,0.3);stroke-width:1;stroke:black;\"/><circle cx=\"395.0\" cy=\"472.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"432.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"392.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"352.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"312.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"272.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"232.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"192.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"152.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"112.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"72.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"32.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/><circle cx=\"395.0\" cy=\"17.5\" r=\"1.25\" style=\"fill:black;stroke-width:0;stroke:black;\"/></g></svg>"
  end
end