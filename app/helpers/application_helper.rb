module ApplicationHelper
  def jp_authority_type(authority_type)
    authority_type =
      case authority_type
      when 0 then "内定者"
      when 1 then "社員"
      when 2 then "管理者"
      end
  end

  def jp_job_type(job_type)
    job_type =
      case job_type
      when 0 then "エンジニア"
      when 1 then "営業"
      when 2 then "一般"
      end
  end
end
