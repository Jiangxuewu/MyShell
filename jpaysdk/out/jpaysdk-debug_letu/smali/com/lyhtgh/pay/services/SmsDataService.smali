.class public Lcom/lyhtgh/pay/services/SmsDataService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    .line 28
    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    .line 23
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 36
    :cond_0
    iput-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    .line 37
    iput-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->af()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    .line 40
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onBind"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :goto_0
    return-object v0

    .line 164
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 168
    const-string v2, "onDestroy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 169
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 175
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    .line 246
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 250
    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 251
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lyhtgh/pay/services/SmsDataService;->a()V

    .line 55
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->c()I

    .line 66
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 70
    const-string v2, "onCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 96
    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 4

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 271
    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 272
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 279
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    .line 184
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 188
    const-string v2, "onRebind"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SmsDataService"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iput-boolean v3, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    .line 121
    :goto_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onStart"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 125
    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 146
    return-void

    .line 115
    :cond_1
    iput-boolean v2, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    goto :goto_0

    .line 119
    :cond_2
    iput-boolean v2, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    goto :goto_0

    .line 134
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 138
    const-string v2, "onStart"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    .line 225
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 229
    const-string v2, "onStartCommand"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 230
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    :goto_0
    return v0

    .line 232
    :catch_0
    move-exception v0

    .line 236
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    .line 208
    const-string v2, "onUnbind"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 215
    :goto_0
    return v0

    .line 211
    :catch_0
    move-exception v0

    .line 215
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
