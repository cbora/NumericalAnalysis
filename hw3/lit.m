
function w = lit(x_vals, y_vals ,z_vals)

syms x y
tree_ones = ones(3);
matrix = [tree_ones(:,1), x_vals(:), y_vals(:)];

A = (1/2) * det(matrix);

N1 = (x * (y_vals(2) - y_vals(3)) - y * (x_vals(2) - x_vals(3)) + ( x_vals(2)*y_vals(3) - x_vals(3)*y_vals(2))) / (2 * A);
N2 = (x * (y_vals(3) - y_vals(1)) - y * (x_vals(3) - x_vals(1)) + ( x_vals(3)*y_vals(1) - x_vals(1)*y_vals(3))) / (2 * A);
N3 = (x * (y_vals(1) - y_vals(2)) - y * (x_vals(1) - x_vals(2)) + ( x_vals(1)*y_vals(2) - x_vals(2)*y_vals(1))) / (2 * A);

w = (N1 *z_vals(1)) + (N2 * z_vals(2)) + (N3 *z_vals(3));