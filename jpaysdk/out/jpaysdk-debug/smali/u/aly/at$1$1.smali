.class Lu/aly/at$1$1;
.super Lu/aly/f;


# instance fields
.field final synthetic a:Lu/aly/at$1;


# direct methods
.method constructor <init>(Lu/aly/at$1;)V
    .locals 0

    iput-object p1, p0, Lu/aly/at$1$1;->a:Lu/aly/at$1;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method
