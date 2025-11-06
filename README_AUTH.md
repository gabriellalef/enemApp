    ## Autenticação com Supabase

Este projeto agora inclui páginas de autenticação usando Supabase Auth (frontend).

Variáveis necessárias (no .env):
- NEXT_PUBLIC_SUPABASE_URL
- NEXT_PUBLIC_SUPABASE_ANON_KEY

Fluxo:
- Usuário cria conta em /auth/signup
- Usuário faz login em /auth/login
- Páginas protegidas usam o hook useAuth para redirecionar usuários não autenticados.

Notas:
- Recomendo ativar e configurar o provider de e-mail no painel do Supabase.
- Para proteção completa de APIs, adicione verificação do token no servidor (ex.: passar token no Authorization header e usar Supabase Admin to verify).
