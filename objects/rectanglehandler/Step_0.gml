stepmove=10;
if (tx<drawtx) {drawtx+=max(tx-drawtx, -stepmove)} else {drawtx+=min(tx-drawtx, stepmove)}
if (ty<drawty) {drawty+=max(ty-drawty, -stepmove)} else {drawty+=min(ty-drawty, stepmove)}
if (bx<drawbx) {drawbx+=max(bx-drawbx, -stepmove)} else {drawbx+=min(bx-drawbx, stepmove)}
if (by<drawby) {drawby+=max(by-drawby, -stepmove)} else {drawby+=min(by-drawby, stepmove)}
if (drawtx==tx&&drawty==ty&&drawbx==bx&&drawby==by) {
obj_soul.fightwait=false;	
} else {
obj_soul.fightwait=true;	
}