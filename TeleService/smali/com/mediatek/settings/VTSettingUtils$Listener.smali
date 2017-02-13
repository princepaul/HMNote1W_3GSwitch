.class public interface abstract Lcom/mediatek/settings/VTSettingUtils$Listener;
.super Ljava/lang/Object;
.source "VTSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VTSettingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract answerVTCallPre()V
.end method

.method public abstract dialVTCallSuccess()V
.end method

.method public abstract pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V
.end method
