.class synthetic Lcom/google/common/collect/BstInOrderPath$2;
.super Ljava/lang/Object;
.source "BstInOrderPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BstInOrderPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$common$collect$BstSide:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/google/common/collect/BstSide;->values()[Lcom/google/common/collect/BstSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/collect/BstInOrderPath$2;->$SwitchMap$com$google$common$collect$BstSide:[I

    :try_start_0
    sget-object v0, Lcom/google/common/collect/BstInOrderPath$2;->$SwitchMap$com$google$common$collect$BstSide:[I

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/common/collect/BstInOrderPath$2;->$SwitchMap$com$google$common$collect$BstSide:[I

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method