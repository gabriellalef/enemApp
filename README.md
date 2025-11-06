# ENEM App — MVP (Full)

## Requisitos
- Node 18+
- npm
- (Opcional) Docker & docker-compose

## Instalação rápida
1. Unzip the archive.
2. Copy `.env.example` to `.env` and fill:
   - OPENAI_API_KEY
   - STRIPE_SECRET
   - SUPABASE_URL
   - SUPABASE_SERVICE_KEY
3. npm install
4. npm run dev

## Supabase setup (quick)
1. Crie um projeto no Supabase.
2. Crie tabelas: `essays`, `reviewers`, `assignments`, `corrections` com colunas esperadas (id, content, created_at, status, etc.).
3. Cole as variáveis SUPABASE_URL e SUPABASE_SERVICE_KEY no .env

## Stripe
- Crie produtos/prices no Dashboard Stripe e use o `priceId` no payload do endpoint `/api/checkout`.

## OpenAI
- Coloque sua chave em OPENAI_API_KEY para usar `/api/correct_openai`.

## Observações
- O projeto já contém fallbacks em memória caso não configure Supabase.
- Autenticação não está totalmente implementada — recomendo integrar Supabase Auth ou NextAuth para produção.


## Auth & Webhooks
- Páginas de login e signup implementadas com Supabase Auth (frontend).
- Endpoint de webhook Stripe em /api/webhooks/stripe. Configure STRIPE_WEBHOOK_SECRET.


## Stripe Checkout & Webhooks
- Checkout front-end at /checkout
- Webhook endpoint at /api/webhooks/stripe grants 10 credits on completed checkout when `metadata.userId` is set.
- Ensure STRIPE_WEBHOOK_SECRET and SUPABASE env vars are configured.
