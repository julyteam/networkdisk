var cvs = document.getElementById('cvs');
var ctx = cvs.getContext('2d');

CanvasRenderingContext2D.prototype.sector = function(x, y, r, angle1, angle2) {
	this.save();
	this.beginPath();
	this.moveTo(x, y);
	this.arc(x, y, r, angle1 * Math.PI / 180, angle2 * Math.PI / 180, false);
	this.closePath();
	this.restore();
	return this;
}

function arcFun(x, y, deg, colorStr) {
	ctx.save();
	ctx.beginPath();
	ctx.translate(cvs.width / 2, cvs.height / 2); //将画布坐标系原点移至中心
	ctx.rotate(deg * Math.PI / 180);
	ctx.translate(-cvs.width / 2, -cvs.height / 2); //修正画布坐标系
	ctx.fillStyle = colorStr;
	ctx.arc(12, 190, 12, 2 * Math.PI / 180, false);
	ctx.fill();
}

ctx.fillStyle = '#e9e9e9';
ctx.sector(190, 190, 190, 135, 405).fill(); //绘制进度条槽

//根据三角函数算出进度槽的起点和终点的圆心坐标
var arc_a = Math.pow(178, 2);
var arc_y = Math.sqrt(arc_a / 2); //
var arc_x = 178 - arc_y;

//进度槽的起点圆点
ctx.beginPath();
ctx.arc(12 + arc_x, 190 + arc_y, 12, 2 * Math.PI / 180, false);
ctx.fillStyle = '#e9e9e9';
ctx.fill();
//进度槽的终点圆点
ctx.beginPath();
ctx.arc(190 + arc_y, 190 + arc_y, 12, 2 * Math.PI / 180, false);
ctx.fillStyle = '#e9e9e9';
ctx.fill();

var creditVal = parseFloat($('#creditContent h1').text()); //获取信誉值
var deg = 270 / 100 * creditVal; //根据信誉值得到进度条的旋转度数

//有信誉值得时候
if(deg > 0) {
	ctx.fillStyle = '#ffd100';
	ctx.sector(190, 190, 190, 135, 135 + deg).fill(); //绘制进度条

	arcFun(12, 190, -45, '#ffd100'); //进度条开始的圆点
	arcFun(12, 190, deg, '#ffd100'); //进度条结束的圆点
}

////绘制中心圆
ctx.beginPath();
ctx.fillStyle = '#FFFFFF';
ctx.arc(cvs.width / 2, cvs.width / 2, 166, 2 * Math.PI / 180, false);
ctx.fill();