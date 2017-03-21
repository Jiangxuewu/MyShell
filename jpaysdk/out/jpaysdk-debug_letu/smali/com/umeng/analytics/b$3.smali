.class Lcom/umeng/analytics/b$3;
.super Lu/aly/ca;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/b;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/b$3;->b:Lcom/umeng/analytics/b;

    iput-object p2, p0, Lcom/umeng/analytics/b$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/b$3;->b:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/b$3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b$3;->b:Lcom/umeng/analytics/b;

    invoke-static {v0}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;)Lu/aly/m;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/m;->f()V

    return-void
.end method
