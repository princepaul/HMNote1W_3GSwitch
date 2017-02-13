.class final Lcom/mediatek/phone/vt/VTCallUtils$1;
.super Ljava/lang/Object;
.source "VTCallUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFileAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    # invokes: Lcom/mediatek/phone/vt/VTCallUtils;->checkDefaultPictureFile()V
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->access$000()V

    .line 127
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v4

    .line 128
    .local v4, "slots":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 129
    .local v3, "slot":I
    # invokes: Lcom/mediatek/phone/vt/VTCallUtils;->checkUserSelectPictureFile(I)V
    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->access$100(I)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "slot":I
    :cond_0
    const-string v5, "end checkVTFile() ! "

    # invokes: Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->access$200(Ljava/lang/String;)V

    .line 134
    return-void
.end method
