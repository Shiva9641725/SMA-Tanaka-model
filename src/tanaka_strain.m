function epsilon = tanaka_strain(sigma, T, direction, p)
% Smooth Tanaka-style forward and reverse transitions

switch upper(direction)
    case 'AM'
        C = p.Cf;
        dTwin = max(p.Ms - p.Mf, p.zeroguard);
        alpha = p.kappa / (C * dTwin);
        sigma0 = C * (T - p.Mp);

    case 'MA'
        C = p.Cm;
        dTwin = max(p.Af - p.As, p.zeroguard);
        alpha = p.kappa / (C * dTwin);
        sigma0 = C * (T - p.Ap);

    otherwise
        error('Direction must be AM or MA');
end

epsilon = (p.e_trans/2) * tanh(alpha * (sigma - sigma0)) + ...
          sigma/p.E + (p.e_trans/2);

end
